.class Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;
.super Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;
.source "ImsSenderRxr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsSenderRxr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsRadioIndication"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsSenderRxr;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 1229
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 1306
    .local p1, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;>;"
    const-string v0, "onCallStateChanged()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1307
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateCallListToV11(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->onCallStateChanged_1_1(Ljava/util/ArrayList;)V

    .line 1308
    return-void
.end method

.method public onCallStateChanged_1_1(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 1300
    .local p1, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;>;"
    const-string v0, "onCallStateChanged_1_1()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1301
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV12;->migrateCallListFromV11(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->onCallStateChanged_1_2(Ljava/util/ArrayList;)V

    .line 1302
    return-void
.end method

.method public onCallStateChanged_1_2(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 1293
    .local p1, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;>;"
    const-string v0, "onCallStateChanged_1_2()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1294
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->migrateCallListFromV12(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->onCallStateChanged_1_3(Ljava/util/ArrayList;)V

    .line 1295
    return-void
.end method

.method public onCallStateChanged_1_3(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 1286
    .local p1, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;>;"
    const-string v0, "onCallStateChanged_1_3()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1287
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV14;->migrateCallListFromV13(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->onCallStateChanged_1_4(Ljava/util/ArrayList;)V

    .line 1288
    return-void
.end method

.method public onCallStateChanged_1_4(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 1234
    .local p1, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;>;"
    const-string v0, "onCallStateChanged_1_4()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1235
    if-nez p1, :cond_0

    .line 1236
    const-string v0, "Call list is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1237
    return-void

    .line 1240
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1241
    .local v0, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1242
    .local v1, "numOfCalls":I
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->access$602(Lorg/codeaurora/ims/ImsSenderRxr;Z)Z

    .line 1244
    const/4 v2, 0x0

    move v4, v2

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 1245
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsRadioUtils;->buildDriverCallImsFromHal(Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v5

    .line 1250
    .local v5, "dc":Lorg/codeaurora/ims/DriverCallIms;
    iget-object v6, v5, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v6, v6, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, v5, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v6, v6, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    const-string v7, "Forbidden. Not Authorized for Service"

    .line 1251
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1253
    iget-object v6, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const-string v7, "Throwing ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION intent."

    invoke-virtual {v6, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1254
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.internal.intent.action.ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1256
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v7, 0x20000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1257
    iget-object v7, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v7, v7, Lorg/codeaurora/ims/ImsSenderRxr;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1259
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_1
    iget-boolean v6, v5, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    if-eqz v6, :cond_2

    .line 1260
    iget-object v6, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v6, v6, Lorg/codeaurora/ims/ImsSenderRxr;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1261
    iget-object v6, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const-string v7, "InCall VoicePrivacy is enabled"

    invoke-virtual {v6, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1263
    :cond_2
    iget-object v6, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v6, v6, Lorg/codeaurora/ims/ImsSenderRxr;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1264
    iget-object v6, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const-string v7, "InCall VoicePrivacy is disabled"

    invoke-virtual {v6, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1266
    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1244
    .end local v5    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1269
    .end local v4    # "i":I
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1270
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v5, 0xc9

    invoke-virtual {v4, v5, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1272
    invoke-static {}, Lorg/codeaurora/ims/ImsSenderRxr;->isDualSystem()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1273
    invoke-static {}, Lorg/codeaurora/ims/ImsSenderRxr;->isContainerIsActive()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1274
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/DriverCallIms;

    iget-object v2, v2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v2, v3, :cond_5

    .line 1275
    :cond_4
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const-string v3, "onCallStateChanged() is not active"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1276
    return-void

    .line 1280
    :cond_5
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsSenderRxr;->mCallStateRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1281
    return-void
.end method

.method public onEnterEmergencyCallBackMode()V
    .locals 2

    .line 1429
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLog(I)V

    .line 1430
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 1431
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1433
    :cond_0
    return-void
.end method

.method public onExitEmergencyCallBackMode()V
    .locals 3

    .line 1437
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xce

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLog(I)V

    .line 1438
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 1439
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1442
    :cond_0
    return-void
.end method

.method public onGeolocationInfoRequested(DD)V
    .locals 4
    .param p1, "lat"    # D
    .param p3, "lon"    # D

    .line 1547
    nop

    .line 1548
    invoke-static {p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRadioUtils;->geolocationIndicationFromHal(DD)Lorg/codeaurora/ims/GeoLocationInfo;

    move-result-object v0

    .line 1549
    .local v0, "ret":Lorg/codeaurora/ims/GeoLocationInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v2, 0xd8

    invoke-virtual {v1, v2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1550
    if-eqz v0, :cond_0

    .line 1551
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$1300(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;

    move-result-object v1

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1553
    :cond_0
    const-string v1, "onGeolocationInfoRequested: Null location data!"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1555
    :goto_0
    return-void
.end method

.method public onHandover(Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;)V
    .locals 4
    .param p1, "inHandover"    # Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;

    .line 1390
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->handoverFromHal(Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;)Lorg/codeaurora/ims/HoInfo;

    move-result-object v0

    .line 1392
    .local v0, "outHandover":Lorg/codeaurora/ims/HoInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1393
    if-eqz v0, :cond_0

    .line 1394
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$900(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;

    move-result-object v1

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1397
    :cond_0
    return-void
.end method

.method public onImsSmsStatusReport(Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;)V
    .locals 4
    .param p1, "smsStatusReport"    # Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;

    .line 1312
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xe1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLog(I)V

    .line 1314
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;->pdu:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1315
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->statusReportfromHidl(Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;)Lorg/codeaurora/ims/sms/StatusReport;

    move-result-object v0

    .line 1317
    .local v0, "smsReport":Lorg/codeaurora/ims/sms/StatusReport;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$700(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/Registrant;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1318
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$700(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/Registrant;

    move-result-object v1

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 1322
    .end local v0    # "smsReport":Lorg/codeaurora/ims/sms/StatusReport;
    :cond_0
    return-void
.end method

.method public onImsSubConfigChanged(Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)V
    .locals 4
    .param p1, "config"    # Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;

    .line 1580
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->imsSubconfigFromHal(Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)Lorg/codeaurora/ims/ImsSubConfigDetails;

    move-result-object v0

    .line 1581
    .local v0, "ret":Lorg/codeaurora/ims/ImsSubConfigDetails;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v2, 0xdd

    invoke-virtual {v1, v2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1582
    if-eqz v0, :cond_0

    .line 1583
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$1500(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;

    move-result-object v1

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1584
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1586
    :cond_0
    return-void
.end method

.method public onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;)V
    .locals 4
    .param p1, "rejectInfo"    # Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;

    .line 1559
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xe3

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1560
    if-nez p1, :cond_0

    .line 1561
    const-string v0, "onIncomingCallAutoRejected: rejectInfo is null. Returning"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1562
    return-void

    .line 1565
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v0}, Lorg/codeaurora/ims/DriverCallIms;-><init>()V

    .line 1566
    .local v0, "dc":Lorg/codeaurora/ims/DriverCallIms;
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    iget v2, p1, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;->autoRejectionCause:I

    .line 1567
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->getImsReasonForCallFailCause(I)I

    move-result v2

    iget-short v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;->sipErrorCode:S

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 1569
    iget-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v2, v2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    if-nez v2, :cond_1

    .line 1570
    const/16 v2, 0x640

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v2, v2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    :goto_0
    iput v2, v1, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 1571
    new-instance v1, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v1}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 1572
    iget-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v2, p1, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;->callType:I

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeFromHal(I)I

    move-result v2

    iput v2, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 1573
    iget-object v1, p1, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 1574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingCallAutoRejected :: Call auto rejected from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1576
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$1400(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;

    move-result-object v1

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1577
    return-void
.end method

.method public onIncomingImsSms(Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;)V
    .locals 4
    .param p1, "imsSms"    # Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;

    .line 1326
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xe2

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLog(I)V

    .line 1328
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;->pdu:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;->format:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1329
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->incomingSmsfromHidl(Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;)Lorg/codeaurora/ims/sms/IncomingSms;

    move-result-object v0

    .line 1330
    .local v0, "newSms":Lorg/codeaurora/ims/sms/IncomingSms;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$800(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/Registrant;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1331
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$800(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/Registrant;

    move-result-object v1

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 1334
    .end local v0    # "newSms":Lorg/codeaurora/ims/sms/IncomingSms;
    :cond_0
    return-void
.end method

.method public onMessageWaiting(Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;)V
    .locals 4
    .param p1, "messageWaitingIndication"    # Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;

    .line 1535
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->messageWaitingIndicationFromHal(Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;)Lorg/codeaurora/ims/Mwi;

    move-result-object v0

    .line 1537
    .local v0, "ret":Lorg/codeaurora/ims/Mwi;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v2, 0xd6

    invoke-virtual {v1, v2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1538
    if-eqz v0, :cond_0

    .line 1539
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1541
    :cond_0
    const-string v1, "onMessageWaiting: Data is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1543
    :goto_0
    return-void
.end method

.method public onModifyCall(Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V
    .locals 4
    .param p1, "callModifyInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    .line 1512
    const/16 v0, 0xcf

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1513
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v2, v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1514
    const-string v0, "onModifyCall callModifyInfo is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1515
    return-void

    .line 1517
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->callModifyFromHal(Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)Lorg/codeaurora/ims/CallModify;

    move-result-object v2

    .line 1518
    .local v2, "ret":Lorg/codeaurora/ims/CallModify;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v3, v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1519
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v1, v2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1520
    invoke-virtual {v0, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1521
    return-void
.end method

.method public onMultiIdentityInfoPending()V
    .locals 3

    .line 1728
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x0

    const/16 v2, 0xe6

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1729
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->access$2300(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;

    move-result-object v0

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v1, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1731
    return-void
.end method

.method public onMultiIdentityRegistrationStatusChange(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;",
            ">;)V"
        }
    .end annotation

    .line 1715
    .local p1, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1716
    .local v0, "linesInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    .line 1717
    .local v2, "line":Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;
    nop

    .line 1718
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtilsV14;->fromMultiIdentityLineInfoHal(Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;)Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v3

    .line 1719
    .local v3, "lineInfo":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1720
    .end local v2    # "line":Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;
    .end local v3    # "lineInfo":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    goto :goto_0

    .line 1721
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v2, 0xe5

    invoke-virtual {v1, v2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1722
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$2200(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;

    move-result-object v1

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1724
    return-void
.end method

.method public onParticipantStatusInfo(Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;)V
    .locals 4
    .param p1, "participantStatusInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;

    .line 1590
    nop

    .line 1591
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->participantStatusFromHal(Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;)Lorg/codeaurora/ims/ParticipantStatusDetails;

    move-result-object v0

    .line 1592
    .local v0, "ret":Lorg/codeaurora/ims/ParticipantStatusDetails;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v2, 0xdc

    invoke-virtual {v1, v2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1593
    if-eqz v0, :cond_0

    .line 1594
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$1600(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;

    move-result-object v1

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1595
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1597
    :cond_0
    return-void
.end method

.method public onRadioStateChanged(I)V
    .locals 3
    .param p1, "radioState"    # I

    .line 1410
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd5

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1411
    packed-switch p1, :pswitch_data_0

    .line 1422
    const-string v0, "onRadioStateChanged: Invalid Radio State Change"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1419
    :pswitch_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    sget-object v1, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_ON:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->setRadioState(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V

    .line 1420
    goto :goto_0

    .line 1416
    :pswitch_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    sget-object v1, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->setRadioState(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V

    .line 1417
    goto :goto_0

    .line 1413
    :pswitch_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    sget-object v1, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_OFF:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->setRadioState(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V

    .line 1414
    nop

    .line 1425
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRefreshConferenceInfo(Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;)V
    .locals 4
    .param p1, "conferenceInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;

    .line 1465
    if-eqz p1, :cond_2

    .line 1466
    new-instance v0, Lorg/codeaurora/ims/ConfInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ConfInfo;-><init>()V

    .line 1468
    .local v0, "info":Lorg/codeaurora/ims/ConfInfo;
    iget-object v1, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->confInfoUri:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->confInfoUri:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1469
    iget-object v1, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->confInfoUri:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ConfInfo;->setConfInfoUri(Ljava/util/ArrayList;)V

    .line 1470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshConferenceInfo: confUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->confInfoUri:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1474
    :cond_0
    iget v1, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->conferenceCallState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 1475
    iget v1, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->conferenceCallState:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->conferenceCallStateFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ConfInfo;->setConfCallState(I)V

    .line 1478
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshConferenceInfo: conferenceCallState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->conferenceCallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1480
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v2, 0xd1

    invoke-virtual {v1, v2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1481
    nop

    .line 1482
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$1200(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;

    move-result-object v1

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1486
    .end local v0    # "info":Lorg/codeaurora/ims/ConfInfo;
    :cond_2
    return-void
.end method

.method public onRefreshViceInfo(Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;)V
    .locals 4
    .param p1, "viceInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;

    .line 1490
    if-eqz p1, :cond_0

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;->viceInfoUri:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1491
    new-instance v0, Lorg/codeaurora/ims/ViceUriInfo;

    iget-object v1, p1, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;->viceInfoUri:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ViceUriInfo;-><init>(Ljava/util/ArrayList;)V

    .line 1496
    .local v0, "info":Lorg/codeaurora/ims/ViceUriInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshViceInfo: viceUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;->viceInfoUri:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1497
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v2, 0xd7

    invoke-virtual {v1, v2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1498
    nop

    .line 1499
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshViceInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1500
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1503
    .end local v0    # "info":Lorg/codeaurora/ims/ViceUriInfo;
    :cond_0
    return-void
.end method

.method public onRegistrationBlockStatus(ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)V
    .locals 4
    .param p1, "hasBlockStatusOnWwan"    # Z
    .param p2, "blockStatusOnWwan"    # Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    .param p3, "hasBlockStatusOnWlan"    # Z
    .param p4, "blockStatusOnWlan"    # Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;

    .line 1603
    nop

    .line 1604
    invoke-static {p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRadioUtils;->registrationBlockStatusFromHal(ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)Lorg/codeaurora/ims/RegistrationBlockStatusInfo;

    move-result-object v0

    .line 1606
    .local v0, "ret":Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v2, 0xde

    invoke-virtual {v1, v2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1607
    if-eqz v0, :cond_0

    .line 1608
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$1700(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;

    move-result-object v1

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1611
    :cond_0
    const-string v1, "onRegistrationBlockStatus: Data is null."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1613
    :goto_0
    return-void
.end method

.method public onRegistrationChanged(Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)V
    .locals 4
    .param p1, "registration"    # Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    .line 1381
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLog(I)V

    .line 1382
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->registrationFromHal(Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)Lorg/codeaurora/ims/ImsRegistrationInfo;

    move-result-object v0

    .line 1384
    .local v0, "regMessage":Lorg/codeaurora/ims/ImsRegistrationInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1386
    return-void
.end method

.method public onRing()V
    .locals 3

    .line 1338
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x0

    const/16 v2, 0xca

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1340
    invoke-static {}, Lorg/codeaurora/ims/ImsSenderRxr;->isDualSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1341
    invoke-static {}, Lorg/codeaurora/ims/ImsSenderRxr;->isContainerIsActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1342
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const-string v1, "onRing() is not active"

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1343
    return-void

    .line 1348
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_1

    .line 1349
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v1, v1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 1352
    :cond_1
    return-void
.end method

.method public onRingbackTone(I)V
    .locals 6
    .param p1, "tone"    # I

    .line 1356
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 1357
    .local v1, "response":[I
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const-string v3, " responseCallRingBack "

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1359
    invoke-static {}, Lorg/codeaurora/ims/ImsSenderRxr;->isDualSystem()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1360
    invoke-static {}, Lorg/codeaurora/ims/ImsSenderRxr;->isContainerIsActive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1361
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const-string v2, "onRingbackTone() is not active"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1362
    return-void

    .line 1367
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->ringbackToneFromHal(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1368
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseCallRingBack "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1370
    const/4 v2, 0x0

    .line 1371
    .local v2, "playtone":Z
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v5, 0xcb

    invoke-virtual {v4, v5, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1372
    aget v4, v1, v3

    if-ne v4, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 1373
    .end local v2    # "playtone":Z
    .local v0, "playtone":Z
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsSenderRxr;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    if-eqz v2, :cond_2

    .line 1374
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsSenderRxr;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    .line 1375
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1374
    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1377
    :cond_2
    return-void
.end method

.method public onRttMessageReceived(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1616
    if-eqz p1, :cond_0

    .line 1617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRttMessageReceived: msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1618
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xdf

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1619
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->access$1800(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;

    move-result-object v0

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1620
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1622
    :cond_0
    return-void
.end method

.method public onServiceStatusChanged(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;",
            ">;)V"
        }
    .end annotation

    .line 1401
    .local p1, "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->handleSrvStatus(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    .line 1402
    .local v0, "ret":Ljava/lang/Object;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v2, 0xd2

    invoke-virtual {v1, v2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1403
    if-eqz v0, :cond_0

    .line 1404
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$1000(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;

    move-result-object v1

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1406
    :cond_0
    return-void
.end method

.method public onSuppServiceNotification(Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;)V
    .locals 4
    .param p1, "suppServiceNotification"    # Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;

    .line 1525
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->suppServiceNotificationFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;)Lorg/codeaurora/ims/SuppNotifyInfo;

    move-result-object v0

    .line 1526
    .local v0, "ret":Ljava/lang/Object;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v2, 0xd3

    invoke-virtual {v1, v2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1527
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 1528
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 1531
    :cond_0
    return-void
.end method

.method public onSupplementaryServiceIndication(Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;)V
    .locals 20
    .param p1, "ss"    # Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;

    move-object/from16 v0, p0

    .line 1644
    move-object/from16 v1, p1

    new-instance v8, Landroid/telephony/ims/ImsSsData;

    iget v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->serviceType:I

    .line 1645
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->serviceTypeFromRILServiceType(I)I

    move-result v3

    iget v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->requestType:I

    .line 1646
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->requestTypeFromRILRequestType(I)I

    move-result v4

    iget v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->teleserviceType:I

    .line 1647
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->teleserviceTypeFromRILTeleserviceType(I)I

    move-result v5

    iget v6, v1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->serviceClass:I

    iget v7, v1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->result:I

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/telephony/ims/ImsSsData;-><init>(IIIII)V

    .line 1651
    .local v2, "ssData":Landroid/telephony/ims/ImsSsData;
    invoke-virtual {v2}, Landroid/telephony/ims/ImsSsData;->isTypeCf()Z

    move-result v3

    const/16 v4, 0xe0

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsSsData;->isTypeInterrogation()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1652
    iget-object v3, v1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->cfData:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_0/CfData;

    .line 1653
    .local v3, "cfData":Lvendor/qti/hardware/radio/ims/V1_0/CfData;
    iget-object v7, v3, Lvendor/qti/hardware/radio/ims/V1_0/CfData;->cfInfo:Ljava/util/ArrayList;

    invoke-static {v7}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCFStatusResponseFromHal(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v7

    .line 1654
    .local v7, "ret":Ljava/lang/Object;
    instance-of v8, v7, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    if-eqz v8, :cond_0

    .line 1655
    const-string v6, "onSupplementaryServiceIndication : Not handling CFUT SS"

    invoke-static {v0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1656
    iget-object v6, v0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v6, v4, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1657
    return-void

    .line 1659
    :cond_0
    iget-object v8, v3, Lvendor/qti/hardware/radio/ims/V1_0/CfData;->cfInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1660
    .local v8, "num":I
    new-array v9, v8, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 1661
    .local v9, "cfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    nop

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_1

    .line 1662
    iget-object v10, v3, Lvendor/qti/hardware/radio/ims/V1_0/CfData;->cfInfo:Ljava/util/ArrayList;

    .line 1663
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    .line 1664
    .local v10, "rCfInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    new-instance v18, Landroid/telephony/ims/ImsCallForwardInfo;

    iget v11, v10, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->reason:I

    .line 1665
    invoke-static {v11}, Lorg/codeaurora/ims/ImsRadioUtils;->getUTInterfaceCFReasonFromCommandsInterfaceCFReason(I)I

    move-result v12

    iget v13, v10, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->status:I

    iget v14, v10, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->toa:I

    iget v15, v10, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->serviceClass:I

    iget-object v11, v10, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    iget v5, v10, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->timeSeconds:I

    move-object/from16 v16, v11

    move-object/from16 v11, v18

    move/from16 v17, v5

    invoke-direct/range {v11 .. v17}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>(IIIILjava/lang/String;I)V

    aput-object v18, v9, v6

    .line 1672
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[SS Data] CF Info "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v9, v6

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1661
    .end local v10    # "rCfInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto :goto_0

    .line 1674
    .end local v6    # "i":I
    :cond_1
    invoke-virtual {v2, v9}, Landroid/telephony/ims/ImsSsData;->setCallForwardingInfo([Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 1676
    .end local v3    # "cfData":Lvendor/qti/hardware/radio/ims/V1_0/CfData;
    .end local v7    # "ret":Ljava/lang/Object;
    .end local v9    # "cfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    goto/16 :goto_3

    .end local v8    # "num":I
    :cond_2
    invoke-virtual {v2}, Landroid/telephony/ims/ImsSsData;->isTypeIcb()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/telephony/ims/ImsSsData;->isTypeInterrogation()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1677
    iget-object v3, v1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->cbNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1678
    .restart local v8    # "num":I
    new-array v3, v8, [Landroid/telephony/ims/ImsSsInfo;

    .line 1679
    .local v3, "imsSsInfo":[Landroid/telephony/ims/ImsSsInfo;
    nop

    .restart local v6    # "i":I
    :goto_1
    move v5, v6

    .end local v6    # "i":I
    .local v5, "i":I
    if-ge v5, v8, :cond_3

    .line 1680
    new-instance v6, Landroid/telephony/ims/ImsSsInfo;

    iget-object v7, v1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->cbNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;

    iget v7, v7, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;->status:I

    iget-object v9, v1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->cbNumInfo:Ljava/util/ArrayList;

    .line 1681
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;

    iget-object v9, v9, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;->number:Ljava/lang/String;

    invoke-direct {v6, v7, v9}, Landroid/telephony/ims/ImsSsInfo;-><init>(ILjava/lang/String;)V

    aput-object v6, v3, v5

    .line 1682
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SS Data] ICB Info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v3, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1679
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_1

    .line 1684
    .end local v6    # "i":I
    :cond_3
    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsSsData;->setImsSpecificSuppServiceInfo([Landroid/telephony/ims/ImsSsInfo;)V

    .line 1685
    .end local v3    # "imsSsInfo":[Landroid/telephony/ims/ImsSsInfo;
    goto :goto_3

    .line 1686
    .end local v8    # "num":I
    :cond_4
    iget-object v3, v1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->ssInfoData:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_0/SsInfoData;

    .line 1687
    .local v3, "ssInfoData":Lvendor/qti/hardware/radio/ims/V1_0/SsInfoData;
    iget-object v5, v3, Lvendor/qti/hardware/radio/ims/V1_0/SsInfoData;->ssInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1688
    .restart local v8    # "num":I
    new-array v5, v8, [I

    .line 1689
    .local v5, "ssInfo":[I
    nop

    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v8, :cond_5

    .line 1690
    iget-object v7, v3, Lvendor/qti/hardware/radio/ims/V1_0/SsInfoData;->ssInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v5, v6

    .line 1691
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SS Data] SS Info "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v5, v6

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1689
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1693
    .end local v6    # "i":I
    :cond_5
    invoke-virtual {v2, v5}, Landroid/telephony/ims/ImsSsData;->setSuppServiceInfo([I)V

    .line 1696
    .end local v3    # "ssInfoData":Lvendor/qti/hardware/radio/ims/V1_0/SsInfoData;
    .end local v5    # "ssInfo":[I
    :goto_3
    iget-object v3, v0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v3, v4, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1698
    iget-object v3, v0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, v3, Lorg/codeaurora/ims/ImsSenderRxr;->mSsIndicationRegistrant:Landroid/os/Registrant;

    if-eqz v3, :cond_6

    .line 1699
    iget-object v3, v0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, v3, Lorg/codeaurora/ims/ImsSenderRxr;->mSsIndicationRegistrant:Landroid/os/Registrant;

    new-instance v4, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v2, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 1701
    :cond_6
    return-void
.end method

.method public onTtyNotification(Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;)V
    .locals 4
    .param p1, "ttyInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;

    .line 1446
    const/4 v0, 0x0

    .line 1447
    .local v0, "mode":[I
    if-eqz p1, :cond_0

    .line 1448
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 1449
    const/4 v1, 0x0

    iget v2, p1, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;->mode:I

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->ttyModeFromHal(I)I

    move-result v2

    aput v2, v0, v1

    .line 1454
    :cond_0
    iget-object v1, p1, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;->userData:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;->userData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1455
    iget-object v1, p1, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;->userData:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->getByteArray(Ljava/util/ArrayList;)[B

    .line 1457
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v2, 0xd4

    invoke-virtual {v1, v2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1458
    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$1100(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1459
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$1100(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;

    move-result-object v1

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1461
    :cond_2
    return-void
.end method

.method public onVoWiFiCallQuality(I)V
    .locals 4
    .param p1, "voWiFiCallQuality"    # I

    .line 1634
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd9

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1635
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->voWiFiCallQualityFromHal(I)Ljava/lang/Object;

    move-result-object v0

    .line 1636
    .local v0, "ret":Ljava/lang/Object;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$2000(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1637
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$2000(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;

    move-result-object v1

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1640
    :cond_0
    return-void
.end method

.method public onVoiceInfoChanged(I)V
    .locals 4
    .param p1, "voiceInfo"    # I

    .line 1626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVoiceInfoChanged: VoiceInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1627
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe4

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1628
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->access$1900(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;

    move-result-object v0

    new-instance v1, Landroid/os/AsyncResult;

    .line 1629
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1630
    return-void
.end method

.method public onVopsChanged(Z)V
    .locals 4
    .param p1, "isVopsEnabled"    # Z

    .line 1705
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xda

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 1706
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->access$2100(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1707
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->access$2100(Lorg/codeaurora/ims/ImsSenderRxr;)Landroid/os/RegistrantList;

    move-result-object v0

    new-instance v1, Landroid/os/AsyncResult;

    .line 1708
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1710
    :cond_0
    return-void
.end method
