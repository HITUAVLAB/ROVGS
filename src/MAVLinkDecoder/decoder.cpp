#include "decoder.h"

void MAVLinkDecoder::receiveMessages(mavlink_message_t msg){
    uint32_t msgid = msg.msgid;
    const mavlink_message_info_t* msgInfo = getMessageInfoByID(msgid);
    if(!msgInfo) {
            //qWarning() << "Invalid MAVLink message received. ID:" << msgid;
            return;
    }

    // The SYSTEM_TIME message is special, in that it's handled here for synchronizing the QGC time with the remote time.
    if (msg.msgid == MAVLINK_MSG_ID_SYSTEM_TIME)
    {
        mavlink_system_time_t timebase;
        mavlink_msg_system_time_decode(&msg, &timebase);
        //sysDict[msgid].onboardTimeOffset = (timebase.time_unix_usec+500)/1000 - timebase.time_boot_ms;
        //sysDict[msgid].onboardToGCSUnixTimeOffsetAndDelay  = static_cast<qint64>(QGC::groundTimeMilliseconds() - (timebase.time_unix_usec+500)/1000);
    }
}

/*use bisection to find the matched ID message*/
const mavlink_message_info_t * MAVLinkDecoder::getMessageInfoByID(const uint32_t msgid){
    static const mavlink_message_info_t mavlink_message_info[] = MAVLINK_MESSAGE_INFO;
    /*
        use a bisection search to find the right entry. A perfect hash may be better
        Note that this assumes the table is sorted with primary key msgid
    */
    uint32_t low=0, high=sizeof(mavlink_message_info)/sizeof(mavlink_message_info[0]);
    while (low < high) {
        uint32_t mid = (low+1+high)/2;
        if (msgid < mavlink_message_info[mid].msgid) {
            high = mid-1;
            continue;
        }
        if (msgid > mavlink_message_info[mid].msgid) {
            low = mid;
            continue;
        }
        low = mid;
        break;
    }
    if (mavlink_message_info[low].msgid == msgid) {
        return &mavlink_message_info[low];
    }
    return NULL;
}
