.class public Lorg/codeaurora/ims/ImsRadioUtils;
.super Ljava/lang/Object;
.source "ImsRadioUtils.java"


# static fields
.field private static final INVALID_CONNID:I

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    const-string v0, "ImsRadioUtils"

    sput-object v0, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FacilityTypeFromHal(I)I
    .locals 1
    .param p0, "facilityType"    # I

    .line 1503
    const/16 v0, 0x8

    packed-switch p0, :pswitch_data_0

    .line 1530
    return v0

    .line 1525
    :pswitch_0
    const/16 v0, 0xc

    return v0

    .line 1523
    :pswitch_1
    const/16 v0, 0xb

    return v0

    .line 1521
    :pswitch_2
    const/16 v0, 0xa

    return v0

    .line 1519
    :pswitch_3
    const/16 v0, 0x9

    return v0

    .line 1517
    :pswitch_4
    return v0

    .line 1515
    :pswitch_5
    const/4 v0, 0x7

    return v0

    .line 1513
    :pswitch_6
    const/4 v0, 0x6

    return v0

    .line 1511
    :pswitch_7
    const/4 v0, 0x5

    return v0

    .line 1527
    :pswitch_8
    const/4 v0, 0x4

    return v0

    .line 1509
    :pswitch_9
    const/4 v0, 0x3

    return v0

    .line 1507
    :pswitch_a
    const/4 v0, 0x2

    return v0

    .line 1505
    :pswitch_b
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blockReasonDetailsFromHal(Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;)Lorg/codeaurora/ims/BlockReasonDetailsInfo;
    .locals 3
    .param p0, "inBlockReasonDetails"    # Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;

    .line 2420
    new-instance v0, Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;-><init>()V

    .line 2422
    .local v0, "outBlockReasonDetails":Lorg/codeaurora/ims/BlockReasonDetailsInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;->regFailureReasonType:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 2423
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;->regFailureReasonType:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->regFailureReasonTypeFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->setRegFailureReasonType(I)V

    .line 2427
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;->regFailureReason:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 2428
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;->regFailureReason:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->setRegFailureReason(I)V

    .line 2431
    :cond_1
    return-object v0
.end method

.method public static blockReasonTypeFromHal(I)I
    .locals 1
    .param p0, "inBlockReason"    # I

    .line 2404
    packed-switch p0, :pswitch_data_0

    .line 2414
    const/4 v0, -0x1

    return v0

    .line 2412
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 2410
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 2408
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 2406
    :pswitch_3
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blockStatusFromHal(Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)Lorg/codeaurora/ims/BlockStatusInfo;
    .locals 3
    .param p0, "inBlockStatus"    # Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;

    .line 2385
    if-nez p0, :cond_0

    .line 2386
    const/4 v0, 0x0

    return-object v0

    .line 2389
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/BlockStatusInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/BlockStatusInfo;-><init>()V

    .line 2391
    .local v0, "outBlockStatus":Lorg/codeaurora/ims/BlockStatusInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->blockReason:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 2392
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->blockReason:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->blockReasonTypeFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockStatusInfo;->setReason(I)V

    .line 2395
    :cond_1
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->hasBlockReasonDetails:Z

    if-eqz v1, :cond_2

    .line 2396
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->blockReasonDetails:Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->blockReasonDetailsFromHal(Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;)Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockStatusInfo;->setReasonDetails(Lorg/codeaurora/ims/BlockReasonDetailsInfo;)V

    .line 2400
    :cond_2
    return-object v0
.end method

.method public static buildCFStatusResponseFromHal(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1337
    .local p0, "inCfInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;>;"
    const/4 v0, 0x0

    .line 1339
    .local v0, "outCfInfoList":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v1, 0x0

    if-eqz p0, :cond_e

    .line 1340
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1341
    .local v2, "infoListSize":I
    new-array v0, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1342
    new-array v3, v2, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 1344
    .local v3, "timerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_d

    .line 1345
    new-instance v4, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v4}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v4, v0, v1

    .line 1346
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    .line 1348
    .local v4, "inCfInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->status:I

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_0

    .line 1349
    aget-object v5, v0, v1

    iget v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->status:I

    iput v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1352
    :cond_0
    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->reason:I

    if-eq v5, v6, :cond_1

    .line 1353
    aget-object v5, v0, v1

    iget v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->reason:I

    iput v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1356
    :cond_1
    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->serviceClass:I

    if-eq v5, v6, :cond_2

    .line 1357
    aget-object v5, v0, v1

    iget v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->serviceClass:I

    iput v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1360
    :cond_2
    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->toa:I

    if-eq v5, v6, :cond_3

    .line 1361
    aget-object v5, v0, v1

    iget v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->toa:I

    iput v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1364
    :cond_3
    aget-object v5, v0, v1

    iget-object v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1366
    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->timeSeconds:I

    if-eq v5, v6, :cond_4

    .line 1367
    aget-object v5, v0, v1

    iget v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->timeSeconds:I

    iput v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 1370
    :cond_4
    iget-boolean v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerStart:Z

    if-eqz v5, :cond_c

    iget-boolean v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerEnd:Z

    if-eqz v5, :cond_c

    .line 1371
    const-string v5, "responseQueryCallForward for Timer"

    invoke-static {v5}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 1372
    iget-object v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->callFwdTimerStart:Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;

    .line 1373
    .local v5, "startCallTimerInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;
    new-instance v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    invoke-direct {v7}, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;-><init>()V

    aput-object v7, v3, v1

    .line 1374
    iget v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->status:I

    if-eq v7, v6, :cond_5

    .line 1375
    aget-object v7, v3, v1

    iget v8, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->status:I

    iput v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    .line 1378
    :cond_5
    iget v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->reason:I

    if-eq v7, v6, :cond_6

    .line 1379
    aget-object v7, v3, v1

    iget v8, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->reason:I

    iput v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    .line 1382
    :cond_6
    iget v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->serviceClass:I

    if-eq v7, v6, :cond_7

    .line 1383
    aget-object v7, v3, v1

    iget v8, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->serviceClass:I

    iput v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->serviceClass:I

    .line 1386
    :cond_7
    aget-object v7, v3, v1

    iget-object v8, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->number:Ljava/lang/String;

    .line 1388
    iget v7, v5, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->hour:I

    if-eq v7, v6, :cond_8

    .line 1389
    aget-object v7, v3, v1

    iget v8, v5, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->hour:I

    iput v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startHour:I

    .line 1392
    :cond_8
    iget v7, v5, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->minute:I

    if-eq v7, v6, :cond_9

    .line 1393
    aget-object v7, v3, v1

    iget v8, v5, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->minute:I

    iput v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startMinute:I

    .line 1395
    :cond_9
    iget-object v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->callFwdTimerEnd:Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;

    .line 1397
    .local v7, "endCallTimerInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;
    iget v8, v7, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->hour:I

    if-eq v8, v6, :cond_a

    .line 1398
    aget-object v8, v3, v1

    iget v9, v7, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->hour:I

    iput v9, v8, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endHour:I

    .line 1401
    :cond_a
    iget v8, v7, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->minute:I

    if-eq v8, v6, :cond_b

    .line 1402
    aget-object v6, v3, v1

    iget v8, v7, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->minute:I

    iput v8, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endMinute:I

    .line 1404
    :cond_b
    return-object v3

    .line 1344
    .end local v4    # "inCfInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    .end local v5    # "startCallTimerInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;
    .end local v7    # "endCallTimerInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1407
    .end local v1    # "i":I
    .end local v2    # "infoListSize":I
    .end local v3    # "timerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    :cond_d
    goto :goto_1

    .line 1408
    :cond_e
    new-array v0, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1409
    const-string v1, "inCfInfoList is null."

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 1412
    :goto_1
    return-object v0
.end method

.method public static buildCallForwardInfo(IILjava/lang/String;II)Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    .locals 2
    .param p0, "cfReason"    # I
    .param p1, "serviceClass"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "action"    # I
    .param p4, "timeSeconds"    # I

    .line 1273
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;-><init>()V

    .line 1275
    .local v0, "cfInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    iput p3, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->status:I

    .line 1276
    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->reason:I

    .line 1277
    iput p1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->serviceClass:I

    .line 1278
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->toa:I

    .line 1279
    if-eqz p2, :cond_0

    .line 1280
    iput-object p2, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    .line 1282
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerStart:Z

    .line 1283
    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerEnd:Z

    .line 1284
    iput p4, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->timeSeconds:I

    .line 1286
    return-object v0
.end method

.method public static buildCallFwdTimerInfo(Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;II)V
    .locals 1
    .param p0, "callFwdTimerInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .line 1327
    const v0, 0x7fffffff

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->year:I

    .line 1328
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->month:I

    .line 1329
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->day:I

    .line 1330
    iput p1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->hour:I

    .line 1331
    iput p2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->minute:I

    .line 1332
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->second:I

    .line 1333
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->timezone:I

    .line 1334
    return-void
.end method

.method public static buildCallModifyInfo(Lorg/codeaurora/ims/CallModify;)Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    .locals 3
    .param p0, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 1674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buildCallModifyInfo callModify= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 1675
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 1676
    .local v0, "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    iget v1, p0, Lorg/codeaurora/ims/CallModify;->call_index:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->callIndex:I

    .line 1678
    iget-object v1, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    if-eqz v1, :cond_0

    .line 1679
    const/4 v1, 0x1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->hasCallDetails:Z

    .line 1680
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsRadioUtils;->callDetailsToHal(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;Lorg/codeaurora/ims/CallDetails;)V

    .line 1684
    :cond_0
    const/16 v1, 0xd

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->failCause:I

    .line 1686
    return-object v0
.end method

.method public static buildCbNumListInfo([Ljava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    .locals 4
    .param p0, "inCbNumList"    # [Ljava/lang/String;
    .param p1, "serviceClass"    # I

    .line 2126
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;-><init>()V

    .line 2128
    .local v0, "outCbNumListInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    const v1, 0x7fffffff

    if-eq p1, v1, :cond_0

    .line 2129
    iput p1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->serviceClass:I

    .line 2132
    :cond_0
    if-eqz p0, :cond_2

    .line 2133
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2134
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;-><init>()V

    .line 2135
    .local v2, "cbNumInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;
    const/4 v3, 0x2

    iput v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;->status:I

    .line 2136
    aget-object v3, p0, v1

    if-eqz v3, :cond_1

    .line 2137
    aget-object v3, p0, v1

    iput-object v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;->number:Ljava/lang/String;

    .line 2139
    :cond_1
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->cbNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2133
    .end local v2    # "cbNumInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2143
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static buildConfigInfo(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    .locals 2
    .param p0, "item"    # I
    .param p1, "boolValue"    # Z
    .param p2, "intValue"    # I
    .param p3, "stringValue"    # Ljava/lang/String;
    .param p4, "errorCause"    # I

    .line 1743
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1745
    .local v0, "configInfo":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->configInfoItemToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->item:I

    .line 1746
    const/4 v1, 0x1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->hasBoolValue:Z

    .line 1747
    iput-boolean p1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->boolValue:Z

    .line 1748
    iput p2, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->intValue:I

    .line 1749
    if-eqz p3, :cond_0

    .line 1750
    iput-object p3, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->stringValue:Ljava/lang/String;

    .line 1752
    :cond_0
    invoke-static {p4}, Lorg/codeaurora/ims/ImsRadioUtils;->configFailureCauseToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->errorCause:I

    .line 1754
    return-object v0
.end method

.method public static buildDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Z)Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;
    .locals 5
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "clirMode"    # I
    .param p2, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p3, "isEncrypted"    # Z

    .line 908
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;-><init>()V

    .line 910
    .local v0, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;
    if-eqz p0, :cond_0

    .line 911
    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->address:Ljava/lang/String;

    .line 913
    :cond_0
    iput p1, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->clirMode:I

    .line 915
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->getIpPresentation(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->presentation:I

    .line 917
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 918
    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasCallDetails:Z

    .line 919
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    invoke-static {v2, p2}, Lorg/codeaurora/ims/ImsRadioUtils;->callDetailsToHal(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;Lorg/codeaurora/ims/CallDetails;)V

    .line 922
    :cond_1
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->getIsConferenceUri(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v2

    .line 923
    .local v2, "isConferenceUri":Z
    if-eqz v2, :cond_2

    .line 924
    iput-boolean v2, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isConferenceUri:Z

    .line 925
    iput-boolean v2, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasIsConferenceUri:Z

    .line 927
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/codeaurora/ims/CallDetails;->getCallPull()Z

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 928
    .local v3, "isCallPull":Z
    :goto_0
    if-eqz v3, :cond_4

    .line 929
    iput-boolean v3, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isCallPull:Z

    .line 930
    iput-boolean v3, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasIsCallPull:Z

    .line 933
    :cond_4
    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasIsEncrypted:Z

    .line 934
    iput-boolean p3, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isEncrypted:Z

    .line 936
    if-eqz p2, :cond_5

    .line 937
    invoke-virtual {p2}, Lorg/codeaurora/ims/CallDetails;->getMultiIdentityLineInfo()Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 938
    .local v1, "multiIdentityLineInfo":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    :goto_1
    iget-object v4, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->multiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-static {v1, v4}, Lorg/codeaurora/ims/ImsRadioUtilsV14;->toMultiIdentityLineInfoHal(Lorg/codeaurora/ims/MultiIdentityLineInfo;Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;)V

    .line 942
    return-object v0
.end method

.method public static buildDriverCallImsFromHal(Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 7
    .param p0, "call"    # Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;

    .line 164
    new-instance v0, Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    .line 165
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->createVerstatInfo(Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;)Lorg/codeaurora/ims/VerstatInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/VerstatInfo;)V

    .line 166
    .local v0, "dc":Lorg/codeaurora/ims/DriverCallIms;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->state:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 167
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->state:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->callStateFromHal(I)Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 170
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->index:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 171
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->index:I

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 174
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->toa:I

    if-eq v1, v2, :cond_2

    .line 175
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->toa:I

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    .line 178
    :cond_2
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsMpty:Z

    if-eqz v1, :cond_3

    .line 179
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isMpty:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    .line 182
    :cond_3
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsMT:Z

    if-eqz v1, :cond_4

    .line 183
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isMT:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    .line 186
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->als:I

    if-eq v1, v2, :cond_5

    .line 187
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->als:I

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->als:I

    .line 190
    :cond_5
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVoice:Z

    if-eqz v1, :cond_6

    .line 191
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVoice:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isVoice:Z

    .line 194
    :cond_6
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVoicePrivacy:Z

    if-eqz v1, :cond_7

    .line 195
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVoicePrivacy:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    .line 198
    :cond_7
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->numberPresentation:I

    invoke-static {v1}, Lorg/codeaurora/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    .line 200
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    .line 201
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->namePresentation:I

    invoke-static {v1}, Lorg/codeaurora/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    .line 204
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsEncrypted:Z

    if-eqz v1, :cond_8

    .line 205
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isEncrypted:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    .line 208
    :cond_8
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->historyInfo:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    .line 210
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVideoConfSupported:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    .line 211
    const/4 v1, 0x1

    .line 212
    iget-boolean v4, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVideoConfSupported:Z

    if-eqz v4, :cond_9

    .line 213
    const/4 v4, 0x2

    goto :goto_0

    .line 214
    :cond_9
    move v4, v3

    :goto_0
    or-int/2addr v1, v4

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    .line 217
    :cond_a
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasCallDetails:Z

    if-eqz v1, :cond_b

    .line 218
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->getCallDetails(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;)Lorg/codeaurora/ims/CallDetails;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 221
    :cond_b
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 222
    iget-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iget v4, v0, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    invoke-static {v1, v4}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 224
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v3, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 227
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasFailCause:Z

    if-eqz v1, :cond_11

    .line 228
    const/4 v1, 0x0

    .line 230
    .local v1, "networkError":Ljava/lang/String;
    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-boolean v4, v4, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->hasErrorDetails:Z

    if-eqz v4, :cond_c

    .line 231
    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v1, v4, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 234
    :cond_c
    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget v4, v4, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->failCause:I

    .line 236
    .local v4, "failCause":I
    const/16 v5, 0x225

    if-eq v4, v5, :cond_e

    .line 237
    iget-object v5, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 238
    invoke-static {v4}, Lorg/codeaurora/ims/ImsRadioUtils;->getImsReasonForCallFailCause(I)I

    move-result v6

    iput v6, v5, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 239
    iget-object v5, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-boolean v5, v5, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->hasErrorDetails:Z

    if-eqz v5, :cond_d

    iget-object v5, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v5, v5, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v5, v5, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    if-eq v5, v2, :cond_d

    .line 241
    iget-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v5, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v5, v5, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v5, v5, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iput v5, v2, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto :goto_1

    .line 243
    :cond_d
    const-string v2, "CallFailCauseResponse has no int error code!"

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 246
    :goto_1
    iput v4, v0, Lorg/codeaurora/ims/DriverCallIms;->mCallFailReason:I

    .line 249
    if-eqz v1, :cond_f

    .line 250
    iget-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iput-object v1, v2, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    goto :goto_2

    .line 253
    :cond_e
    const-string v2, "CallFailCauseResponse failCause is Invalid"

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 255
    :cond_f
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FailCause: callFailCause.mCode = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v5, v5, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " dc.callFailCause.mExtraCode = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v5, v5, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " dc.mCallFailReason = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lorg/codeaurora/ims/DriverCallIms;->mCallFailReason:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " errorinfo = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v5, v5, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 259
    iget-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v2, v2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    if-eqz v2, :cond_10

    iget-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v2, v2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const/16 v5, 0x169

    if-ne v2, v5, :cond_11

    .line 263
    :cond_10
    iget-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v5, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v5, v5, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    .line 264
    invoke-static {v5}, Lorg/codeaurora/ims/ImsRadioUtils;->convertModemErrorInfoToExtraCode(Ljava/util/ArrayList;)I

    move-result v5

    iput v5, v2, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    .line 265
    iget-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v2, v2, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    const/16 v5, 0x68

    if-ne v2, v5, :cond_11

    .line 266
    const-string v2, "FailCause: callFailCause.mCode set to CODE_UNSPECIFIED for 603"

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 267
    iget-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iput v3, v2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 273
    .end local v1    # "networkError":Ljava/lang/String;
    .end local v4    # "failCause":I
    :cond_11
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV14;->fromMultiIdentityLineInfoHal(Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;)Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->mMtMultiLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 274
    return-object v0
.end method

.method public static buildExplicitCallTransferInfo(IILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;
    .locals 2
    .param p0, "srcCallId"    # I
    .param p1, "type"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "destCallId"    # I

    .line 2275
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;-><init>()V

    .line 2276
    .local v0, "ectInfo":Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;
    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->callId:I

    .line 2277
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->ectTypeToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->ectType:I

    .line 2278
    if-eqz p2, :cond_0

    .line 2279
    iput-object p2, v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->targetAddress:Ljava/lang/String;

    .line 2281
    :cond_0
    if-lez p3, :cond_1

    .line 2282
    iput p3, v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->targetCallId:I

    goto :goto_0

    .line 2284
    :cond_1
    const v1, 0x7fffffff

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->targetCallId:I

    .line 2286
    :goto_0
    return-object v0
.end method

.method public static buildHangupRequest(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;
    .locals 8
    .param p0, "connectionId"    # I
    .param p1, "userUri"    # Ljava/lang/String;
    .param p2, "confUri"    # Ljava/lang/String;
    .param p3, "mpty"    # Z
    .param p4, "failCause"    # I
    .param p5, "errorInfo"    # Ljava/lang/String;

    .line 989
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;-><init>()V

    .line 995
    .local v0, "hangup":Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;
    const v1, 0x7fffffff

    if-eqz p0, :cond_0

    .line 996
    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->connIndex:I

    goto :goto_0

    .line 998
    :cond_0
    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->connIndex:I

    .line 1001
    :goto_0
    if-eqz p1, :cond_1

    .line 1002
    iput-object p1, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->connUri:Ljava/lang/String;

    .line 1004
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->hasMultiParty:Z

    .line 1005
    iput-boolean p3, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->multiParty:Z

    .line 1006
    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->conf_id:I

    .line 1007
    if-eq p4, v1, :cond_4

    .line 1008
    iput-boolean v2, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->hasFailCauseResponse:Z

    .line 1009
    const/4 v1, 0x0

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1010
    sget-object v2, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hangupWithReason errorInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_2

    aget-byte v5, v2, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    .line 1012
    .local v5, "b":Ljava/lang/Byte;
    iget-object v6, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v6, v6, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1011
    .end local v5    # "b":Ljava/lang/Byte;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1015
    :cond_2
    invoke-static {p4}, Lorg/codeaurora/ims/ImsRadioUtils;->getCallFailCauseForImsReason(I)I

    move-result v2

    .line 1016
    .local v2, "callFailCause":I
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iput v2, v3, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->failCause:I

    .line 1017
    sget-object v3, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hangupWithReason callFailCause="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1020
    const/16 v3, 0x1fd

    if-ne v2, v3, :cond_3

    .line 1021
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_3

    aget-byte v6, v3, v5

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    .line 1022
    .local v6, "b":Ljava/lang/Byte;
    iget-object v7, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v7, v7, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1021
    .end local v6    # "b":Ljava/lang/Byte;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1025
    :cond_3
    sget-object v1, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hangupWithReason MISC callFailCause, errorInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1027
    .end local v2    # "callFailCause":I
    :cond_4
    return-object v0
.end method

.method public static buildImsSms(ILjava/lang/String;Ljava/lang/String;Z[B)Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;
    .locals 6
    .param p0, "messageRef"    # I
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "isRetry"    # Z
    .param p4, "pdu"    # [B

    .line 1291
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;-><init>()V

    .line 1293
    .local v0, "imsSms":Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;
    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->messageRef:I

    .line 1294
    iput-object p1, v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->format:Ljava/lang/String;

    .line 1295
    iput-boolean p3, v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->shallRetry:Z

    .line 1296
    if-nez p2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->smsc:Ljava/lang/String;

    .line 1297
    array-length v1, p4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-byte v3, p4, v2

    .line 1298
    .local v3, "a":B
    iget-object v4, v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->pdu:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    .end local v3    # "a":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1300
    :cond_1
    return-object v0
.end method

.method public static buildServiceStatusInfo(IIII)Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    .locals 3
    .param p0, "srvType"    # I
    .param p1, "network"    # I
    .param p2, "enabled"    # I
    .param p3, "restrictCause"    # I

    .line 335
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;-><init>()V

    .line 336
    .local v0, "statusForAccessTech":Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->mapRadioTechToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->networkMode:I

    .line 337
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->statusTypeToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->status:I

    .line 338
    iput p3, v0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->restrictCause:I

    .line 339
    const/4 v1, 0x0

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->hasRegistration:Z

    .line 341
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;-><init>()V

    .line 342
    .local v1, "serviceStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->hasIsValid:Z

    .line 343
    iput-boolean v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->isValid:Z

    .line 344
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeToHal(I)I

    move-result v2

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->callType:I

    .line 345
    iget-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    return-object v1
.end method

.method public static callDetailsToHal(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;Lorg/codeaurora/ims/CallDetails;)V
    .locals 3
    .param p0, "imsRadioCallDetails"    # Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;
    .param p1, "callDetails"    # Lorg/codeaurora/ims/CallDetails;

    .line 109
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeToHal(I)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    .line 110
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->callDomainToHal(I)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    .line 112
    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->getRttMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v2, v0, :cond_0

    .line 113
    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->getRttMode()I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    goto :goto_0

    .line 115
    :cond_0
    iput v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    .line 117
    :goto_0
    iget-object v0, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    .line 119
    nop

    .local v1, "i":I
    :goto_2
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    if-ge v0, v1, :cond_2

    .line 120
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 119
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 122
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public static callDomainFromHal(I)I
    .locals 1
    .param p0, "callDomain"    # I

    .line 1132
    packed-switch p0, :pswitch_data_0

    .line 1144
    const/4 v0, 0x4

    return v0

    .line 1140
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 1138
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 1136
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 1134
    :pswitch_3
    const/16 v0, 0xb

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static callDomainToHal(I)I
    .locals 1
    .param p0, "callDomain"    # I

    .line 1149
    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1160
    const/4 v0, 0x4

    return v0

    .line 1157
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 1155
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 1153
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 1151
    :cond_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static callModifyFailCauseFromHal(I)I
    .locals 1
    .param p0, "failCause"    # I

    .line 1709
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1737
    return v0

    .line 1735
    :pswitch_0
    const/16 v0, 0x21

    return v0

    .line 1733
    :pswitch_1
    const/16 v0, 0x20

    return v0

    .line 1731
    :pswitch_2
    const/16 v0, 0x1f

    return v0

    .line 1729
    :pswitch_3
    const/16 v0, 0x1e

    return v0

    .line 1727
    :pswitch_4
    const/16 v0, 0x1d

    return v0

    .line 1725
    :pswitch_5
    const/16 v0, 0x1c

    return v0

    .line 1723
    :pswitch_6
    const/16 v0, 0x1b

    return v0

    .line 1721
    :pswitch_7
    const/16 v0, 0x10

    return v0

    .line 1719
    :pswitch_8
    const/4 v0, 0x7

    return v0

    .line 1717
    :pswitch_9
    const/4 v0, 0x6

    return v0

    .line 1715
    :pswitch_a
    const/4 v0, 0x2

    return v0

    .line 1713
    :pswitch_b
    const/4 v0, 0x1

    return v0

    .line 1711
    :pswitch_c
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static callModifyFromHal(Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)Lorg/codeaurora/ims/CallModify;
    .locals 3
    .param p0, "callModifyInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    .line 1690
    new-instance v0, Lorg/codeaurora/ims/CallModify;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallModify;-><init>()V

    .line 1692
    .local v0, "callModify":Lorg/codeaurora/ims/CallModify;
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->hasCallDetails:Z

    if-eqz v1, :cond_0

    .line 1693
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->getCallDetails(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;)Lorg/codeaurora/ims/CallDetails;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    .line 1696
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->callIndex:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 1697
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->callIndex:I

    iput v1, v0, Lorg/codeaurora/ims/CallModify;->call_index:I

    .line 1700
    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Lorg/codeaurora/ims/CallModify;->error:I

    .line 1701
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->failCause:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    .line 1702
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->failCause:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->callModifyFailCauseFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallModify;->error:I

    .line 1705
    :cond_2
    return-object v0
.end method

.method private static callStateFromHal(I)Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 1
    .param p0, "inCallState"    # I

    .line 1243
    packed-switch p0, :pswitch_data_0

    .line 1258
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1255
    :pswitch_0
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1253
    :pswitch_1
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1251
    :pswitch_2
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1249
    :pswitch_3
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1247
    :pswitch_4
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1245
    :pswitch_5
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static callTypeFromHal(I)I
    .locals 1
    .param p0, "callType"    # I

    .line 848
    packed-switch p0, :pswitch_data_0

    .line 874
    :pswitch_0
    const/16 v0, 0xa

    return v0

    .line 870
    :pswitch_1
    const/16 v0, 0x19

    return v0

    .line 868
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 866
    :pswitch_3
    const/16 v0, 0x18

    return v0

    .line 864
    :pswitch_4
    const/16 v0, 0x17

    return v0

    .line 862
    :pswitch_5
    const/16 v0, 0x16

    return v0

    .line 860
    :pswitch_6
    const/16 v0, 0x15

    return v0

    .line 858
    :pswitch_7
    const/4 v0, 0x4

    return v0

    .line 856
    :pswitch_8
    const/4 v0, 0x3

    return v0

    .line 854
    :pswitch_9
    const/4 v0, 0x2

    return v0

    .line 852
    :pswitch_a
    const/4 v0, 0x1

    return v0

    .line 850
    :pswitch_b
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static callTypeToHal(I)I
    .locals 1
    .param p0, "callType"    # I

    .line 818
    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 843
    const/16 v0, 0x9

    return v0

    .line 840
    :pswitch_0
    const/16 v0, 0xb

    return v0

    .line 836
    :pswitch_1
    const/16 v0, 0x8

    return v0

    .line 834
    :pswitch_2
    const/4 v0, 0x7

    return v0

    .line 832
    :pswitch_3
    const/4 v0, 0x6

    return v0

    .line 830
    :pswitch_4
    const/4 v0, 0x5

    return v0

    .line 838
    :pswitch_5
    const/16 v0, 0xa

    return v0

    .line 828
    :pswitch_6
    const/4 v0, 0x4

    return v0

    .line 826
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 824
    :pswitch_8
    const/4 v0, 0x2

    return v0

    .line 822
    :pswitch_9
    const/4 v0, 0x1

    return v0

    .line 820
    :pswitch_a
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static clipStatusFromHal(I)I
    .locals 1
    .param p0, "clipStatus"    # I

    .line 1650
    packed-switch p0, :pswitch_data_0

    .line 1657
    const/4 v0, 0x2

    return v0

    .line 1654
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1652
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static conferenceCallStateFromHal(I)I
    .locals 1
    .param p0, "conferenceCallState"    # I

    .line 1662
    packed-switch p0, :pswitch_data_0

    .line 1669
    const/4 v0, 0x2

    return v0

    .line 1666
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1664
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static configFailureCauseFromHal(I)I
    .locals 1
    .param p0, "errorCause"    # I

    .line 2108
    packed-switch p0, :pswitch_data_0

    .line 2121
    const/4 v0, 0x5

    return v0

    .line 2118
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 2116
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 2114
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 2112
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 2110
    :pswitch_4
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static configFailureCauseToHal(I)I
    .locals 1
    .param p0, "errorCause"    # I

    .line 2089
    packed-switch p0, :pswitch_data_0

    .line 2103
    const/4 v0, 0x6

    return v0

    .line 2101
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 2099
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 2097
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2095
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2093
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 2091
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static configInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)Lorg/codeaurora/ims/ImsConfigItem;
    .locals 3
    .param p0, "configInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    .line 1759
    if-nez p0, :cond_0

    .line 1760
    const/4 v0, 0x0

    return-object v0

    .line 1763
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsConfigItem;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsConfigItem;-><init>()V

    .line 1765
    .local v0, "config":Lorg/codeaurora/ims/ImsConfigItem;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->item:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->configInfoItemFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setItem(I)V

    .line 1767
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->hasBoolValue:Z

    if-eqz v1, :cond_1

    .line 1768
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->boolValue:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setBoolValue(Z)V

    .line 1771
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->intValue:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 1772
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->intValue:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setIntValue(I)V

    .line 1775
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setStringValue(Ljava/lang/String;)V

    .line 1777
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->errorCause:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    .line 1778
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->errorCause:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->configFailureCauseFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setErrorCause(I)V

    .line 1781
    :cond_3
    return-object v0
.end method

.method public static configInfoItemFromHal(I)I
    .locals 1
    .param p0, "item"    # I

    .line 1938
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 2084
    :pswitch_0
    return v0

    .line 2082
    :pswitch_1
    const/16 v0, 0x48

    return v0

    .line 2080
    :pswitch_2
    const/16 v0, 0x47

    return v0

    .line 2078
    :pswitch_3
    const/16 v0, 0x45

    return v0

    .line 2076
    :pswitch_4
    const/16 v0, 0x44

    return v0

    .line 2074
    :pswitch_5
    const/16 v0, 0x43

    return v0

    .line 2072
    :pswitch_6
    const/16 v0, 0x42

    return v0

    .line 2070
    :pswitch_7
    const/16 v0, 0x41

    return v0

    .line 2068
    :pswitch_8
    const/16 v0, 0x40

    return v0

    .line 2066
    :pswitch_9
    const/16 v0, 0x3f

    return v0

    .line 2064
    :pswitch_a
    const/16 v0, 0x3e

    return v0

    .line 2062
    :pswitch_b
    const/16 v0, 0x3d

    return v0

    .line 2060
    :pswitch_c
    const/16 v0, 0x3c

    return v0

    .line 2058
    :pswitch_d
    const/16 v0, 0x3b

    return v0

    .line 2056
    :pswitch_e
    const/16 v0, 0x3a

    return v0

    .line 2054
    :pswitch_f
    const/16 v0, 0x39

    return v0

    .line 2052
    :pswitch_10
    const/16 v0, 0x38

    return v0

    .line 2050
    :pswitch_11
    const/16 v0, 0x37

    return v0

    .line 2048
    :pswitch_12
    const/16 v0, 0x36

    return v0

    .line 2046
    :pswitch_13
    const/16 v0, 0x35

    return v0

    .line 2044
    :pswitch_14
    const/16 v0, 0x34

    return v0

    .line 2042
    :pswitch_15
    const/16 v0, 0x33

    return v0

    .line 2040
    :pswitch_16
    const/16 v0, 0x32

    return v0

    .line 2038
    :pswitch_17
    const/16 v0, 0x31

    return v0

    .line 2036
    :pswitch_18
    const/16 v0, 0x30

    return v0

    .line 2034
    :pswitch_19
    const/16 v0, 0x2f

    return v0

    .line 2032
    :pswitch_1a
    const/16 v0, 0x2e

    return v0

    .line 2030
    :pswitch_1b
    const/16 v0, 0x2d

    return v0

    .line 2028
    :pswitch_1c
    const/16 v0, 0x2c

    return v0

    .line 2026
    :pswitch_1d
    const/16 v0, 0x2b

    return v0

    .line 2024
    :pswitch_1e
    const/16 v0, 0x2a

    return v0

    .line 2022
    :pswitch_1f
    const/16 v0, 0x29

    return v0

    .line 2020
    :pswitch_20
    const/16 v0, 0x28

    return v0

    .line 2018
    :pswitch_21
    const/16 v0, 0x27

    return v0

    .line 2016
    :pswitch_22
    const/16 v0, 0x26

    return v0

    .line 2014
    :pswitch_23
    const/16 v0, 0x25

    return v0

    .line 2012
    :pswitch_24
    const/16 v0, 0x24

    return v0

    .line 2010
    :pswitch_25
    const/16 v0, 0x23

    return v0

    .line 2008
    :pswitch_26
    const/16 v0, 0x22

    return v0

    .line 2006
    :pswitch_27
    const/16 v0, 0x21

    return v0

    .line 2004
    :pswitch_28
    const/16 v0, 0x20

    return v0

    .line 2002
    :pswitch_29
    const/16 v0, 0x1f

    return v0

    .line 2000
    :pswitch_2a
    const/16 v0, 0x1e

    return v0

    .line 1998
    :pswitch_2b
    const/16 v0, 0x1d

    return v0

    .line 1996
    :pswitch_2c
    const/16 v0, 0x1c

    return v0

    .line 1994
    :pswitch_2d
    const/16 v0, 0x1b

    return v0

    .line 1992
    :pswitch_2e
    const/16 v0, 0x1a

    return v0

    .line 1990
    :pswitch_2f
    const/16 v0, 0x19

    return v0

    .line 1988
    :pswitch_30
    const/16 v0, 0x18

    return v0

    .line 1986
    :pswitch_31
    const/16 v0, 0x17

    return v0

    .line 1984
    :pswitch_32
    const/16 v0, 0x16

    return v0

    .line 1982
    :pswitch_33
    const/16 v0, 0x15

    return v0

    .line 1980
    :pswitch_34
    const/16 v0, 0x14

    return v0

    .line 1978
    :pswitch_35
    const/16 v0, 0x13

    return v0

    .line 1976
    :pswitch_36
    const/16 v0, 0x12

    return v0

    .line 1974
    :pswitch_37
    const/16 v0, 0x11

    return v0

    .line 1972
    :pswitch_38
    const/16 v0, 0x10

    return v0

    .line 1970
    :pswitch_39
    const/16 v0, 0xf

    return v0

    .line 1968
    :pswitch_3a
    const/16 v0, 0xe

    return v0

    .line 1966
    :pswitch_3b
    const/16 v0, 0xd

    return v0

    .line 1964
    :pswitch_3c
    const/16 v0, 0xc

    return v0

    .line 1962
    :pswitch_3d
    const/16 v0, 0xb

    return v0

    .line 1960
    :pswitch_3e
    const/16 v0, 0xa

    return v0

    .line 1958
    :pswitch_3f
    const/16 v0, 0x9

    return v0

    .line 1956
    :pswitch_40
    const/16 v0, 0x8

    return v0

    .line 1954
    :pswitch_41
    const/4 v0, 0x7

    return v0

    .line 1952
    :pswitch_42
    const/4 v0, 0x6

    return v0

    .line 1950
    :pswitch_43
    const/4 v0, 0x5

    return v0

    .line 1948
    :pswitch_44
    const/4 v0, 0x4

    return v0

    .line 1946
    :pswitch_45
    const/4 v0, 0x3

    return v0

    .line 1944
    :pswitch_46
    const/4 v0, 0x2

    return v0

    .line 1942
    :pswitch_47
    const/4 v0, 0x1

    return v0

    .line 1940
    :pswitch_48
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static configInfoItemToHal(I)I
    .locals 1
    .param p0, "item"    # I

    .line 1785
    packed-switch p0, :pswitch_data_0

    .line 1933
    const/16 v0, 0x49

    return v0

    .line 1929
    :pswitch_0
    const/16 v0, 0x48

    return v0

    .line 1927
    :pswitch_1
    const/16 v0, 0x47

    return v0

    .line 1931
    :pswitch_2
    const/16 v0, 0x46

    return v0

    .line 1925
    :pswitch_3
    const/16 v0, 0x45

    return v0

    .line 1923
    :pswitch_4
    const/16 v0, 0x44

    return v0

    .line 1921
    :pswitch_5
    const/16 v0, 0x43

    return v0

    .line 1919
    :pswitch_6
    const/16 v0, 0x42

    return v0

    .line 1917
    :pswitch_7
    const/16 v0, 0x41

    return v0

    .line 1915
    :pswitch_8
    const/16 v0, 0x40

    return v0

    .line 1913
    :pswitch_9
    const/16 v0, 0x3f

    return v0

    .line 1911
    :pswitch_a
    const/16 v0, 0x3e

    return v0

    .line 1909
    :pswitch_b
    const/16 v0, 0x3d

    return v0

    .line 1907
    :pswitch_c
    const/16 v0, 0x3c

    return v0

    .line 1905
    :pswitch_d
    const/16 v0, 0x3b

    return v0

    .line 1903
    :pswitch_e
    const/16 v0, 0x3a

    return v0

    .line 1901
    :pswitch_f
    const/16 v0, 0x39

    return v0

    .line 1899
    :pswitch_10
    const/16 v0, 0x38

    return v0

    .line 1897
    :pswitch_11
    const/16 v0, 0x37

    return v0

    .line 1895
    :pswitch_12
    const/16 v0, 0x36

    return v0

    .line 1893
    :pswitch_13
    const/16 v0, 0x35

    return v0

    .line 1891
    :pswitch_14
    const/16 v0, 0x34

    return v0

    .line 1889
    :pswitch_15
    const/16 v0, 0x33

    return v0

    .line 1887
    :pswitch_16
    const/16 v0, 0x32

    return v0

    .line 1885
    :pswitch_17
    const/16 v0, 0x31

    return v0

    .line 1883
    :pswitch_18
    const/16 v0, 0x30

    return v0

    .line 1881
    :pswitch_19
    const/16 v0, 0x2f

    return v0

    .line 1879
    :pswitch_1a
    const/16 v0, 0x2e

    return v0

    .line 1877
    :pswitch_1b
    const/16 v0, 0x2d

    return v0

    .line 1875
    :pswitch_1c
    const/16 v0, 0x2c

    return v0

    .line 1873
    :pswitch_1d
    const/16 v0, 0x2b

    return v0

    .line 1871
    :pswitch_1e
    const/16 v0, 0x2a

    return v0

    .line 1869
    :pswitch_1f
    const/16 v0, 0x29

    return v0

    .line 1867
    :pswitch_20
    const/16 v0, 0x28

    return v0

    .line 1865
    :pswitch_21
    const/16 v0, 0x27

    return v0

    .line 1863
    :pswitch_22
    const/16 v0, 0x26

    return v0

    .line 1861
    :pswitch_23
    const/16 v0, 0x25

    return v0

    .line 1859
    :pswitch_24
    const/16 v0, 0x24

    return v0

    .line 1857
    :pswitch_25
    const/16 v0, 0x23

    return v0

    .line 1855
    :pswitch_26
    const/16 v0, 0x22

    return v0

    .line 1853
    :pswitch_27
    const/16 v0, 0x21

    return v0

    .line 1851
    :pswitch_28
    const/16 v0, 0x20

    return v0

    .line 1849
    :pswitch_29
    const/16 v0, 0x1f

    return v0

    .line 1847
    :pswitch_2a
    const/16 v0, 0x1e

    return v0

    .line 1845
    :pswitch_2b
    const/16 v0, 0x1d

    return v0

    .line 1843
    :pswitch_2c
    const/16 v0, 0x1c

    return v0

    .line 1841
    :pswitch_2d
    const/16 v0, 0x1b

    return v0

    .line 1839
    :pswitch_2e
    const/16 v0, 0x1a

    return v0

    .line 1837
    :pswitch_2f
    const/16 v0, 0x19

    return v0

    .line 1835
    :pswitch_30
    const/16 v0, 0x18

    return v0

    .line 1833
    :pswitch_31
    const/16 v0, 0x17

    return v0

    .line 1831
    :pswitch_32
    const/16 v0, 0x16

    return v0

    .line 1829
    :pswitch_33
    const/16 v0, 0x15

    return v0

    .line 1827
    :pswitch_34
    const/16 v0, 0x14

    return v0

    .line 1825
    :pswitch_35
    const/16 v0, 0x13

    return v0

    .line 1823
    :pswitch_36
    const/16 v0, 0x12

    return v0

    .line 1821
    :pswitch_37
    const/16 v0, 0x11

    return v0

    .line 1819
    :pswitch_38
    const/16 v0, 0x10

    return v0

    .line 1817
    :pswitch_39
    const/16 v0, 0xf

    return v0

    .line 1815
    :pswitch_3a
    const/16 v0, 0xe

    return v0

    .line 1813
    :pswitch_3b
    const/16 v0, 0xd

    return v0

    .line 1811
    :pswitch_3c
    const/16 v0, 0xc

    return v0

    .line 1809
    :pswitch_3d
    const/16 v0, 0xb

    return v0

    .line 1807
    :pswitch_3e
    const/16 v0, 0xa

    return v0

    .line 1805
    :pswitch_3f
    const/16 v0, 0x9

    return v0

    .line 1803
    :pswitch_40
    const/16 v0, 0x8

    return v0

    .line 1801
    :pswitch_41
    const/4 v0, 0x7

    return v0

    .line 1799
    :pswitch_42
    const/4 v0, 0x6

    return v0

    .line 1797
    :pswitch_43
    const/4 v0, 0x5

    return v0

    .line 1795
    :pswitch_44
    const/4 v0, 0x4

    return v0

    .line 1793
    :pswitch_45
    const/4 v0, 0x3

    return v0

    .line 1791
    :pswitch_46
    const/4 v0, 0x2

    return v0

    .line 1789
    :pswitch_47
    const/4 v0, 0x1

    return v0

    .line 1787
    :pswitch_48
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertErrorInfoBytesToInt(Ljava/util/ArrayList;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)I"
        }
    .end annotation

    .line 319
    .local p0, "errorinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    .line 320
    .local v0, "errorCode":I
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    .line 321
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    .line 322
    .local v3, "errByte":Ljava/lang/Byte;
    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_2

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    const/16 v6, 0x39

    if-le v4, v6, :cond_1

    goto :goto_1

    .line 326
    :cond_1
    mul-int/lit8 v4, v0, 0xa

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    sub-int/2addr v6, v5

    add-int v0, v4, v6

    .line 327
    .end local v3    # "errByte":Ljava/lang/Byte;
    goto :goto_0

    .line 323
    .restart local v3    # "errByte":Ljava/lang/Byte;
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertErrorInfoBytesToInt: invalid byte "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 324
    return v1

    .line 328
    .end local v3    # "errByte":Ljava/lang/Byte;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertErrorInfoBytesToInt: errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 329
    return v0
.end method

.method private static convertModemErrorInfoToExtraCode(Ljava/util/ArrayList;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)I"
        }
    .end annotation

    .line 283
    .local p0, "errorinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/16 v0, 0xae

    .line 284
    .local v0, "MODEM_CALL_END_CAUSE_SERVICE_OR_OPTION_NOT_IMPLEMENTED":I
    const/16 v1, 0x96

    .line 285
    .local v1, "MODEM_CALL_END_CAUSE_NUMBER_CHANGED":I
    const/16 v2, 0x9c

    .line 286
    .local v2, "MODEM_CALL_END_CAUSE_NORMAL_UNSPECIFIED":I
    const/16 v3, 0xbc

    .line 287
    .local v3, "MODEM_CALL_END_CAUSE_INTERWORKING_UNSPECIFIED":I
    const/16 v4, 0x98

    .line 288
    .local v4, "MODEM_CALL_END_CAUSE_DESTINATION_OUT_OF_ORDER":I
    const/16 v5, 0x95

    .line 290
    .local v5, "MODEM_CALL_END_CAUSE_CALL_REJECTED":I
    const/4 v6, 0x0

    .line 291
    .local v6, "extraCode":I
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->convertErrorInfoBytesToInt(Ljava/util/ArrayList;)I

    move-result v7

    .line 292
    .local v7, "modemErrorCode":I
    const/16 v8, 0x98

    if-eq v7, v8, :cond_3

    const/16 v8, 0x9c

    if-eq v7, v8, :cond_2

    const/16 v8, 0xae

    if-eq v7, v8, :cond_1

    const/16 v8, 0xbc

    if-eq v7, v8, :cond_0

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 297
    :pswitch_0
    const/16 v6, 0x69

    .line 298
    goto :goto_0

    .line 309
    :pswitch_1
    const/16 v6, 0x68

    .line 310
    goto :goto_0

    .line 303
    :cond_0
    const/16 v6, 0x5d

    .line 304
    goto :goto_0

    .line 294
    :cond_1
    const/16 v6, 0x4f

    .line 295
    goto :goto_0

    .line 300
    :cond_2
    const/16 v6, 0x41

    .line 301
    goto :goto_0

    .line 306
    :cond_3
    const/16 v6, 0x65

    .line 307
    nop

    .line 314
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "convertModemErrorInfoToExtraCode: extraCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 315
    return v6

    :pswitch_data_0
    .packed-switch 0x95
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static copySrvStatusList(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/ServiceStatus;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;",
            ">;)[",
            "Lorg/codeaurora/ims/ServiceStatus;"
        }
    .end annotation

    .line 585
    .local p0, "fromList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    const/4 v0, 0x0

    .line 586
    .local v0, "toList":[Lorg/codeaurora/ims/ServiceStatus;
    if-eqz p0, :cond_9

    .line 587
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 588
    .local v1, "listLen":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Num of SrvUpdates = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 589
    new-array v0, v1, [Lorg/codeaurora/ims/ServiceStatus;

    .line 590
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_9

    .line 591
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    .line 592
    .local v4, "fromInfo":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    if-eqz v4, :cond_8

    .line 593
    new-instance v5, Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {v5}, Lorg/codeaurora/ims/ServiceStatus;-><init>()V

    aput-object v5, v0, v3

    .line 594
    iget-boolean v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->hasIsValid:Z

    if-eqz v5, :cond_0

    .line 595
    aget-object v5, v0, v3

    iget-boolean v6, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->isValid:Z

    iput-boolean v6, v5, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    .line 597
    :cond_0
    aget-object v5, v0, v3

    iget v6, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->callType:I

    invoke-static {v6}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeFromHal(I)I

    move-result v6

    iput v6, v5, Lorg/codeaurora/ims/ServiceStatus;->type:I

    .line 598
    iget-object v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-lez v5, :cond_1

    .line 599
    aget-object v5, v0, v3

    invoke-static {v4}, Lorg/codeaurora/ims/ImsRadioUtils;->unpackAccTechStatus(Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;)[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    move-result-object v8

    iput-object v8, v5, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    goto :goto_1

    .line 601
    :cond_1
    aget-object v5, v0, v3

    new-array v8, v7, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v8, v5, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 602
    aget-object v5, v0, v3

    iget-object v5, v5, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    new-instance v8, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v8}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v8, v5, v2

    .line 603
    aget-object v5, v0, v3

    iget-object v5, v5, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v5, v5, v2

    .line 604
    .local v5, "act":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    const/16 v8, 0xe

    iput v8, v5, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 606
    iget v8, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->status:I

    if-eq v8, v6, :cond_2

    .line 607
    iget v8, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->status:I

    invoke-static {v8}, Lorg/codeaurora/ims/ImsRadioUtils;->statusTypeFromHal(I)I

    move-result v8

    iput v8, v5, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 609
    :cond_2
    iget v8, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->restrictCause:I

    const v9, 0x7fffffff

    if-eq v8, v9, :cond_3

    .line 610
    iget v8, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->restrictCause:I

    iput v8, v5, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 613
    .end local v5    # "act":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    :cond_3
    :goto_1
    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->status:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_4

    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->restrictCause:I

    if-eqz v5, :cond_4

    .line 615
    const-string v5, "Partially Enabled Status due to Restrict Cause"

    invoke-static {v5}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 616
    aget-object v5, v0, v3

    iput v7, v5, Lorg/codeaurora/ims/ServiceStatus;->status:I

    goto :goto_2

    .line 618
    :cond_4
    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->status:I

    if-eq v5, v6, :cond_5

    .line 619
    aget-object v5, v0, v3

    iget v6, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->status:I

    invoke-static {v6}, Lorg/codeaurora/ims/ImsRadioUtils;->statusTypeFromHal(I)I

    move-result v6

    iput v6, v5, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 622
    :cond_5
    :goto_2
    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->rttMode:I

    if-eq v8, v5, :cond_6

    .line 623
    aget-object v5, v0, v3

    iget v6, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->rttMode:I

    iput v6, v5, Lorg/codeaurora/ims/ServiceStatus;->rttMode:I

    goto :goto_3

    .line 625
    :cond_6
    aget-object v5, v0, v3

    iput v2, v5, Lorg/codeaurora/ims/ServiceStatus;->rttMode:I

    .line 627
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RTT: copySrvStatusList rtt mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->rttMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 628
    iget-object v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->userdata:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 629
    .local v5, "userdataLen":I
    if-lez v5, :cond_7

    .line 630
    aget-object v6, v0, v3

    new-array v7, v5, [B

    iput-object v7, v6, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 631
    move v6, v2

    .local v6, "j":I
    :goto_4
    if-ge v6, v5, :cond_7

    .line 632
    aget-object v7, v0, v3

    iget-object v7, v7, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    iget-object v8, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->userdata:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v7, v6

    .line 631
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 635
    .end local v5    # "userdataLen":I
    .end local v6    # "j":I
    :cond_7
    goto :goto_5

    .line 636
    :cond_8
    const-string v5, "Null service status in list"

    invoke-static {v5}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 590
    .end local v4    # "fromInfo":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 640
    .end local v1    # "listLen":I
    .end local v3    # "i":I
    :cond_9
    return-object v0
.end method

.method private static ectTypeToHal(I)I
    .locals 1
    .param p0, "type"    # I

    .line 2290
    packed-switch p0, :pswitch_data_0

    .line 2298
    const/4 v0, 0x3

    return v0

    .line 2296
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 2294
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 2292
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static extraTypeFromHal(I)I
    .locals 1
    .param p0, "extraHo"    # I

    .line 1263
    if-eqz p0, :cond_0

    .line 1267
    const/4 v0, -0x1

    return v0

    .line 1265
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static facilityTypeToHal(I)I
    .locals 1
    .param p0, "facilityType"    # I

    .line 1535
    packed-switch p0, :pswitch_data_0

    .line 1561
    const/16 v0, 0xc

    return v0

    .line 1559
    :pswitch_0
    const/16 v0, 0xb

    return v0

    .line 1557
    :pswitch_1
    const/16 v0, 0xa

    return v0

    .line 1555
    :pswitch_2
    const/16 v0, 0x9

    return v0

    .line 1553
    :pswitch_3
    const/16 v0, 0x8

    return v0

    .line 1551
    :pswitch_4
    const/4 v0, 0x7

    return v0

    .line 1549
    :pswitch_5
    const/4 v0, 0x6

    return v0

    .line 1547
    :pswitch_6
    const/4 v0, 0x5

    return v0

    .line 1545
    :pswitch_7
    const/4 v0, 0x4

    return v0

    .line 1543
    :pswitch_8
    const/4 v0, 0x3

    return v0

    .line 1541
    :pswitch_9
    const/4 v0, 0x2

    return v0

    .line 1539
    :pswitch_a
    const/4 v0, 0x1

    return v0

    .line 1537
    :pswitch_b
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static geolocationIndicationFromHal(DD)Lorg/codeaurora/ims/GeoLocationInfo;
    .locals 1
    .param p0, "lat"    # D
    .param p2, "lon"    # D

    .line 2306
    new-instance v0, Lorg/codeaurora/ims/GeoLocationInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codeaurora/ims/GeoLocationInfo;-><init>(DD)V

    return-object v0
.end method

.method public static getByteArray(Ljava/util/ArrayList;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 1489
    .local p0, "inList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    if-nez p0, :cond_0

    .line 1490
    const/4 v0, 0x0

    return-object v0

    .line 1493
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 1495
    .local v0, "outArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1496
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 1495
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1499
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static getCallDetails(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;)Lorg/codeaurora/ims/CallDetails;
    .locals 4
    .param p0, "inCallDetails"    # Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    .line 466
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    .line 468
    .local v0, "outCallDetails":Lorg/codeaurora/ims/CallDetails;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    .line 469
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 472
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 473
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->callDomainFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 476
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 477
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->toCallSubstateConstants(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 481
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    if-eq v1, v2, :cond_3

    .line 482
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 485
    :cond_3
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 486
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 488
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->copySrvStatusList(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 489
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->copySrvStatusList(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 491
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    if-eq v1, v2, :cond_4

    .line 492
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    .line 495
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    .line 496
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    .line 499
    :cond_5
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 500
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 503
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call Details = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 505
    return-object v0
.end method

.method public static getCallFailCauseForImsReason(I)I
    .locals 3
    .param p0, "imsReason"    # I

    .line 1031
    sget-object v0, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsReason= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    const/16 v0, 0x1f5

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1048
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->getCallFailCauseForImsReason(I)I

    move-result v0

    goto :goto_0

    .line 1045
    :pswitch_0
    const/16 v0, 0x1f8

    .line 1046
    .local v0, "failCause":I
    goto :goto_0

    .line 1042
    .end local v0    # "failCause":I
    :pswitch_1
    const/16 v0, 0x1f7

    .line 1043
    .restart local v0    # "failCause":I
    goto :goto_0

    .line 1036
    .end local v0    # "failCause":I
    :pswitch_2
    const/16 v0, 0x1f6

    .line 1037
    .restart local v0    # "failCause":I
    goto :goto_0

    .line 1039
    .end local v0    # "failCause":I
    :cond_0
    const/16 v0, 0x1f5

    .line 1040
    .restart local v0    # "failCause":I
    nop

    .line 1048
    :goto_0
    nop

    .line 1050
    return v0

    :pswitch_data_0
    .packed-switch 0x1f8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getHidlAddressInfo(DDLandroid/location/Address;)Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    .locals 5
    .param p0, "lat"    # D
    .param p2, "lon"    # D
    .param p4, "address"    # Landroid/location/Address;

    .line 2690
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;-><init>()V

    .line 2692
    .local v0, "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    if-nez p4, :cond_0

    .line 2693
    sget-object v1, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    const-string v2, "Null Address!"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2694
    return-object v0

    .line 2697
    :cond_0
    invoke-virtual {p4}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    .line 2698
    .local v1, "info":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2699
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->city:Ljava/lang/String;

    .line 2701
    :cond_1
    invoke-virtual {p4}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v1

    .line 2702
    if-eqz v1, :cond_2

    .line 2703
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->state:Ljava/lang/String;

    .line 2705
    :cond_2
    invoke-virtual {p4}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    .line 2706
    if-eqz v1, :cond_3

    .line 2707
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->country:Ljava/lang/String;

    .line 2709
    :cond_3
    invoke-virtual {p4}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    .line 2710
    if-eqz v1, :cond_4

    .line 2711
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->postalCode:Ljava/lang/String;

    .line 2713
    :cond_4
    invoke-virtual {p4}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 2714
    if-eqz v1, :cond_5

    .line 2715
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->countryCode:Ljava/lang/String;

    .line 2717
    :cond_5
    invoke-virtual {p4}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    .line 2718
    if-eqz v1, :cond_6

    .line 2719
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->street:Ljava/lang/String;

    .line 2721
    :cond_6
    invoke-virtual {p4}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v1

    .line 2722
    if-eqz v1, :cond_7

    .line 2723
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->houseNumber:Ljava/lang/String;

    .line 2725
    :cond_7
    sget-object v2, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",houseNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2726
    return-object v0
.end method

.method private static getImsReasonForCallFailCause(I)I
    .locals 2
    .param p0, "failCause"    # I

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call fail cause= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 353
    const/16 v0, 0x1f7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x226

    if-eq p0, v0, :cond_0

    const/16 v0, 0x152

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/16 v1, 0x150

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    .line 460
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV12;->getImsReasonForCallFailCause(I)I

    move-result v0

    return v0

    .line 447
    :pswitch_0
    const/16 v0, 0xfb

    return v0

    .line 445
    :pswitch_1
    const/16 v0, 0xfa

    return v0

    .line 451
    :pswitch_2
    const/16 v0, 0xf9

    return v0

    .line 449
    :pswitch_3
    const/16 v0, 0xf8

    return v0

    .line 443
    :pswitch_4
    const/16 v0, 0xf7

    return v0

    .line 407
    :pswitch_5
    const/16 v0, 0x194

    return v0

    .line 405
    :pswitch_6
    const/16 v0, 0x193

    return v0

    .line 403
    :pswitch_7
    const/16 v0, 0x192

    return v0

    .line 401
    :pswitch_8
    const/16 v0, 0x191

    return v0

    .line 394
    :pswitch_9
    const/16 v0, 0x16a

    return v0

    .line 392
    :pswitch_a
    const/16 v0, 0x169

    return v0

    .line 386
    :pswitch_b
    const/16 v0, 0x162

    return v0

    .line 390
    :pswitch_c
    const/16 v0, 0x161

    return v0

    .line 388
    :pswitch_d
    const/16 v0, 0x160

    return v0

    .line 380
    :pswitch_e
    const/16 v0, 0x15f

    return v0

    .line 378
    :pswitch_f
    const/16 v0, 0x155

    return v0

    .line 376
    :pswitch_10
    const/16 v0, 0x154

    return v0

    .line 374
    :pswitch_11
    const/16 v0, 0x153

    return v0

    .line 372
    :pswitch_12
    return v0

    .line 370
    :pswitch_13
    const/16 v0, 0x151

    return v0

    .line 368
    :pswitch_14
    return v1

    .line 366
    :pswitch_15
    const/16 v0, 0x14f

    return v0

    .line 364
    :pswitch_16
    const/16 v0, 0x14e

    return v0

    .line 362
    :pswitch_17
    const/16 v0, 0x14d

    return v0

    .line 360
    :pswitch_18
    const/16 v0, 0x14c

    return v0

    .line 358
    :pswitch_19
    const/16 v0, 0x14b

    return v0

    .line 356
    :pswitch_1a
    const/16 v0, 0x141

    return v0

    .line 435
    :pswitch_1b
    const/16 v0, 0x5e8

    return v0

    .line 433
    :pswitch_1c
    const/16 v0, 0x3f8

    return v0

    .line 431
    :pswitch_1d
    const/16 v0, 0x3f7

    return v0

    .line 415
    :pswitch_1e
    const/16 v0, 0x3f6

    return v0

    .line 413
    :pswitch_1f
    return v1

    .line 421
    :pswitch_20
    const/16 v0, 0x92

    return v0

    .line 423
    :pswitch_21
    const/16 v0, 0x95

    return v0

    .line 429
    :pswitch_22
    const/16 v0, 0x16c

    return v0

    .line 427
    :pswitch_23
    const/16 v0, 0x16b

    return v0

    .line 441
    :pswitch_24
    const/16 v0, 0xf6

    return v0

    .line 437
    :pswitch_25
    const/16 v0, 0xf5

    return v0

    .line 439
    :pswitch_26
    const/16 v0, 0xf4

    return v0

    .line 419
    :pswitch_27
    const/16 v0, 0xf3

    return v0

    .line 417
    :pswitch_28
    const/16 v0, 0xf1

    return v0

    .line 411
    :pswitch_29
    return v0

    .line 409
    :pswitch_2a
    const/16 v0, 0x1f5

    return v0

    .line 397
    :cond_0
    const/16 v0, 0x5ea

    return v0

    .line 425
    :cond_1
    const/16 v0, 0x1f9

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_29
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f9
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1fe
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x211
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x21f
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getIpPresentation(I)I
    .locals 1
    .param p0, "clirMode"    # I

    .line 132
    packed-switch p0, :pswitch_data_0

    .line 139
    const/4 v0, 0x3

    return v0

    .line 134
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 137
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getIsConferenceUri(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 3
    .param p0, "callDetails"    # Lorg/codeaurora/ims/CallDetails;

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "isConferenceUri":Z
    if-eqz p0, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    const-string v2, "isConferenceUri"

    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    const/4 v0, 0x1

    .line 159
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method private static getSmsPdu(Ljava/util/ArrayList;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 509
    .local p0, "hidlPdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 511
    .local v0, "pdu":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 512
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 511
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 514
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getUTInterfaceCFReasonFromCommandsInterfaceCFReason(I)I
    .locals 1
    .param p0, "commandsInterfaceCFReason"    # I

    .line 2571
    packed-switch p0, :pswitch_data_0

    .line 2587
    const/4 v0, -0x1

    return v0

    .line 2583
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 2581
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 2579
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2577
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2575
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 2573
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static handleSrvStatus(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1181
    .local p0, "inList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    if-nez p0, :cond_0

    .line 1182
    const-string v0, "inList is null."

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 1183
    const/4 v0, 0x0

    return-object v0

    .line 1186
    :cond_0
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->copySrvStatusList(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v0

    .line 1187
    .local v0, "outList":[Lorg/codeaurora/ims/ServiceStatus;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1189
    .local v1, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    return-object v1
.end method

.method public static handoverFromHal(Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;)Lorg/codeaurora/ims/HoInfo;
    .locals 3
    .param p0, "inHandover"    # Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;

    .line 1194
    if-nez p0, :cond_0

    .line 1195
    const/4 v0, 0x0

    return-object v0

    .line 1198
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/HoInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/HoInfo;-><init>()V

    .line 1200
    .local v0, "outHandover":Lorg/codeaurora/ims/HoInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->type:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 1201
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->handoverTypeFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setType(I)V

    .line 1204
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->srcTech:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_2

    .line 1205
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->srcTech:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->radioTechFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setSrcTech(I)V

    .line 1208
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->targetTech:I

    if-eq v1, v2, :cond_3

    .line 1209
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->targetTech:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->radioTechFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setTargetTech(I)V

    .line 1212
    :cond_3
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->hasHoExtra:Z

    if-eqz v1, :cond_4

    .line 1213
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->hoExtra:Lvendor/qti/hardware/radio/ims/V1_0/Extra;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/Extra;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->extraTypeFromHal(I)I

    move-result v1

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->hoExtra:Lvendor/qti/hardware/radio/ims/V1_0/Extra;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/Extra;->extraInfo:Ljava/util/ArrayList;

    .line 1214
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->getByteArray(Ljava/util/ArrayList;)[B

    move-result-object v2

    .line 1213
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/HoInfo;->setExtra(I[B)V

    .line 1217
    :cond_4
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setErrorCode(Ljava/lang/String;)V

    .line 1218
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setErrorMessage(Ljava/lang/String;)V

    .line 1220
    return-object v0
.end method

.method public static handoverTypeFromHal(I)I
    .locals 1
    .param p0, "inType"    # I

    .line 1224
    packed-switch p0, :pswitch_data_0

    .line 1238
    const/4 v0, -0x1

    return v0

    .line 1234
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 1236
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 1232
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 1230
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 1228
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 1226
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static imsSmsDeliverStatusToHidl(I)I
    .locals 1
    .param p0, "status"    # I

    .line 1304
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    .line 1310
    return v0

    .line 1308
    :pswitch_0
    return v0

    .line 1306
    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static imsSmsResponsefromHidl(III)Lorg/codeaurora/ims/sms/SmsResponse;
    .locals 3
    .param p0, "messageRef"    # I
    .param p1, "smsStatusResult"    # I
    .param p2, "hidlReason"    # I

    .line 561
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->mapHidlToFrameworkResponseResult(I)I

    move-result v0

    .line 562
    .local v0, "statusResult":I
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->mapHidlToFrameworkResponseReason(I)I

    move-result v1

    .line 564
    .local v1, "reason":I
    new-instance v2, Lorg/codeaurora/ims/sms/SmsResponse;

    invoke-direct {v2, p0, v0, v1}, Lorg/codeaurora/ims/sms/SmsResponse;-><init>(III)V

    return-object v2
.end method

.method public static imsSmsStatusReportStatusToHidl(I)I
    .locals 1
    .param p0, "report"    # I

    .line 1315
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    .line 1321
    return v0

    .line 1319
    :pswitch_0
    return v0

    .line 1317
    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static imsSubconfigFromHal(Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)Lorg/codeaurora/ims/ImsSubConfigDetails;
    .locals 3
    .param p0, "subConfigInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;

    .line 2311
    if-nez p0, :cond_0

    .line 2312
    const/4 v0, 0x0

    return-object v0

    .line 2315
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsSubConfigDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsSubConfigDetails;-><init>()V

    .line 2316
    .local v0, "subConfig":Lorg/codeaurora/ims/ImsSubConfigDetails;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->simultStackCount:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 2317
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->simultStackCount:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSubConfigDetails;->setSimultStackCount(I)V

    .line 2320
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->imsStackEnabled:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2321
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->imsStackEnabled:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSubConfigDetails;->addImsStackEnabled(Z)V

    .line 2320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2324
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static incomingSmsfromHidl(Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;)Lorg/codeaurora/ims/sms/IncomingSms;
    .locals 4
    .param p0, "imsSms"    # Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;

    .line 580
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;->verstat:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->mapHidlToFrameworkVerstat(I)I

    move-result v0

    .line 581
    .local v0, "verstat":I
    new-instance v1, Lorg/codeaurora/ims/sms/IncomingSms;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;->format:Ljava/lang/String;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;->pdu:Ljava/util/ArrayList;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->getSmsPdu(Ljava/util/ArrayList;)[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/codeaurora/ims/sms/IncomingSms;-><init>(Ljava/lang/String;[BI)V

    return-object v1
.end method

.method public static ipPresentationFromHal(I)I
    .locals 1
    .param p0, "presentation"    # I

    .line 1608
    packed-switch p0, :pswitch_data_0

    .line 1615
    const/4 v0, 0x2

    return v0

    .line 1612
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1610
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ipPresentationToHal(I)I
    .locals 1
    .param p0, "presentation"    # I

    .line 879
    packed-switch p0, :pswitch_data_0

    .line 887
    const/4 v0, 0x3

    return v0

    .line 885
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 883
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 881
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 1176
    const-class v0, Lorg/codeaurora/ims/ImsRadioUtils;

    invoke-static {v0, p0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1177
    return-void
.end method

.method private static mapHidlToFrameworkResponseReason(I)I
    .locals 1
    .param p0, "hidlReason"    # I

    .line 537
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    .line 555
    return v0

    .line 553
    :pswitch_0
    const/16 v0, 0x8

    return v0

    .line 551
    :pswitch_1
    const/4 v0, 0x7

    return v0

    .line 549
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 547
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 545
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 543
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 541
    :pswitch_6
    return v0

    .line 539
    :pswitch_7
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static mapHidlToFrameworkResponseResult(I)I
    .locals 1
    .param p0, "hidlResult"    # I

    .line 522
    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    .line 532
    return v0

    .line 530
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 528
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 526
    :pswitch_2
    return v0

    .line 524
    :pswitch_3
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static mapHidlToFrameworkVerstat(I)I
    .locals 1
    .param p0, "verstat"    # I

    .line 568
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 576
    return v0

    .line 574
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 572
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 570
    :pswitch_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static mapRadioTechToHal(I)I
    .locals 1
    .param p0, "radioTech"    # I

    .line 1083
    packed-switch p0, :pswitch_data_0

    .line 1127
    const/16 v0, 0x15

    return v0

    .line 1125
    :pswitch_0
    const/16 v0, 0x14

    return v0

    .line 1123
    :pswitch_1
    const/16 v0, 0x13

    return v0

    .line 1121
    :pswitch_2
    const/16 v0, 0x12

    return v0

    .line 1119
    :pswitch_3
    const/16 v0, 0x11

    return v0

    .line 1117
    :pswitch_4
    const/16 v0, 0x10

    return v0

    .line 1115
    :pswitch_5
    const/16 v0, 0xf

    return v0

    .line 1113
    :pswitch_6
    const/16 v0, 0xe

    return v0

    .line 1111
    :pswitch_7
    const/16 v0, 0xd

    return v0

    .line 1109
    :pswitch_8
    const/16 v0, 0xc

    return v0

    .line 1107
    :pswitch_9
    const/16 v0, 0xb

    return v0

    .line 1105
    :pswitch_a
    const/16 v0, 0xa

    return v0

    .line 1103
    :pswitch_b
    const/16 v0, 0x9

    return v0

    .line 1101
    :pswitch_c
    const/16 v0, 0x8

    return v0

    .line 1099
    :pswitch_d
    const/4 v0, 0x7

    return v0

    .line 1097
    :pswitch_e
    const/4 v0, 0x6

    return v0

    .line 1095
    :pswitch_f
    const/4 v0, 0x5

    return v0

    .line 1093
    :pswitch_10
    const/4 v0, 0x4

    return v0

    .line 1091
    :pswitch_11
    const/4 v0, 0x3

    return v0

    .line 1089
    :pswitch_12
    const/4 v0, 0x2

    return v0

    .line 1087
    :pswitch_13
    const/4 v0, 0x1

    return v0

    .line 1085
    :pswitch_14
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static messageDetailsFromHal(Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;)Lorg/codeaurora/ims/Mwi$MwiMessageDetails;
    .locals 3
    .param p0, "details"    # Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;

    .line 2237
    if-nez p0, :cond_0

    .line 2238
    const/4 v0, 0x0

    return-object v0

    .line 2241
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;-><init>()V

    .line 2243
    .local v0, "mwiMessageDetails":Lorg/codeaurora/ims/Mwi$MwiMessageDetails;
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->toAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2244
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->toAddress:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mToAddress:Ljava/lang/String;

    .line 2247
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->fromAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2248
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->fromAddress:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mFromAddress:Ljava/lang/String;

    .line 2251
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->subject:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2252
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->subject:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mSubject:Ljava/lang/String;

    .line 2255
    :cond_3
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->date:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2256
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->date:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mDate:Ljava/lang/String;

    .line 2259
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->priority:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    .line 2260
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->priority:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->messagePriorityFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mPriority:I

    .line 2263
    :cond_5
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2264
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->id:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mMessageId:Ljava/lang/String;

    .line 2267
    :cond_6
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->type:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_7

    .line 2268
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->messageTypeFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mMessageType:I

    .line 2270
    :cond_7
    return-object v0
.end method

.method public static messagePriorityFromHal(I)I
    .locals 1
    .param p0, "type"    # I

    .line 2167
    packed-switch p0, :pswitch_data_0

    .line 2176
    const/4 v0, -0x1

    return v0

    .line 2173
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 2171
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 2169
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static messageSummaryFromHal(Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;)Lorg/codeaurora/ims/Mwi$MwiMessageSummary;
    .locals 3
    .param p0, "summary"    # Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;

    .line 2208
    if-nez p0, :cond_0

    .line 2209
    const/4 v0, 0x0

    return-object v0

    .line 2212
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    invoke-direct {v0}, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;-><init>()V

    .line 2214
    .local v0, "mwiMessageSummary":Lorg/codeaurora/ims/Mwi$MwiMessageSummary;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->type:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    .line 2215
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->messageTypeFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mMessageType:I

    .line 2218
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->newMessageCount:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 2219
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->newMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewMessage:I

    .line 2222
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->oldMessageCount:I

    if-eq v1, v2, :cond_3

    .line 2223
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->oldMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mOldMessage:I

    .line 2226
    :cond_3
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->newUrgentMessageCount:I

    if-eq v1, v2, :cond_4

    .line 2227
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->newUrgentMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewUrgent:I

    .line 2230
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->oldUrgentMessageCount:I

    if-eq v1, v2, :cond_5

    .line 2231
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->oldUrgentMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mOldUrgent:I

    .line 2233
    :cond_5
    return-object v0
.end method

.method public static messageTypeFromHal(I)I
    .locals 1
    .param p0, "type"    # I

    .line 2147
    packed-switch p0, :pswitch_data_0

    .line 2162
    const/4 v0, -0x1

    return v0

    .line 2159
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 2157
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 2155
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2153
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2151
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 2149
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static messageWaitingIndicationFromHal(Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;)Lorg/codeaurora/ims/Mwi;
    .locals 5
    .param p0, "messageWaitingIndication"    # Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;

    .line 2182
    if-nez p0, :cond_0

    .line 2183
    const/4 v0, 0x0

    return-object v0

    .line 2186
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/Mwi;

    invoke-direct {v0}, Lorg/codeaurora/ims/Mwi;-><init>()V

    .line 2187
    .local v0, "mwi":Lorg/codeaurora/ims/Mwi;
    sget-object v1, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageWaitingIndicationFromHal summaryCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageSummary:Ljava/util/ArrayList;

    .line 2188
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2187
    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageSummary:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;

    .line 2190
    .local v2, "summary":Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;
    if-eqz v2, :cond_1

    .line 2191
    iget-object v3, v0, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:Ljava/util/List;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->messageSummaryFromHal(Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;)Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2193
    .end local v2    # "summary":Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;
    :cond_1
    goto :goto_0

    .line 2194
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->ueAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2195
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->ueAddress:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi;->mUeAddress:Ljava/lang/String;

    .line 2197
    :cond_3
    sget-object v1, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageWaitingIndicationFromHal detailsCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageDetails:Ljava/util/ArrayList;

    .line 2198
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2197
    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;

    .line 2200
    .local v2, "details":Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;
    if-eqz v2, :cond_4

    .line 2201
    iget-object v3, v0, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:Ljava/util/List;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->messageDetailsFromHal(Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;)Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2203
    .end local v2    # "details":Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;
    :cond_4
    goto :goto_1

    .line 2204
    :cond_5
    return-object v0
.end method

.method public static migrateAddressToV10(Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;)Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;
    .locals 2
    .param p0, "addressInfo"    # Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;

    .line 2731
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;-><init>()V

    .line 2732
    .local v0, "addressInfoV10":Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->city:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->city:Ljava/lang/String;

    .line 2733
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->state:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->state:Ljava/lang/String;

    .line 2734
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->country:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->country:Ljava/lang/String;

    .line 2735
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->postalCode:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->postalCode:Ljava/lang/String;

    .line 2736
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->countryCode:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->countryCode:Ljava/lang/String;

    .line 2737
    return-object v0
.end method

.method private static migrateCallFailCauseToV11(I)I
    .locals 1
    .param p0, "callFailCause"    # I

    .line 2594
    const/16 v0, 0x225

    if-ne p0, v0, :cond_0

    .line 2595
    goto :goto_0

    .line 2596
    :cond_0
    nop

    .line 2594
    move v0, p0

    :goto_0
    return v0
.end method

.method private static migrateCallFailCausefromV13(I)I
    .locals 1
    .param p0, "failCause"    # I

    .line 2768
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->isFailCauseIntroducedInV13(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2769
    const/16 v0, 0x224

    return v0

    .line 2772
    :cond_0
    return p0
.end method

.method private static migrateCallInfoToV11(Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;
    .locals 5
    .param p0, "callInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;

    .line 2602
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;-><init>()V

    .line 2605
    .local v0, "callInfoV11":Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->state:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->state:I

    .line 2606
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->index:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->index:I

    .line 2607
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->toa:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->toa:I

    .line 2608
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsMpty:Z

    .line 2609
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isMpty:Z

    .line 2610
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsMT:Z

    .line 2611
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isMT:Z

    .line 2612
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->als:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->als:I

    .line 2613
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsVoice:Z

    .line 2614
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isVoice:Z

    .line 2615
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsVoicePrivacy:Z

    .line 2616
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isVoicePrivacy:Z

    .line 2617
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->number:Ljava/lang/String;

    .line 2618
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->numberPresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->numberPresentation:I

    .line 2619
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->name:Ljava/lang/String;

    .line 2620
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->namePresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->namePresentation:I

    .line 2622
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasCallDetails:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasCallDetails:Z

    .line 2623
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    .line 2624
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    .line 2625
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    .line 2627
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2628
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2627
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2631
    .end local v2    # "i":I
    :cond_0
    move v2, v1

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2632
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2631
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2635
    .end local v2    # "i":I
    :cond_1
    move v2, v1

    .restart local v2    # "i":I
    :goto_2
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2636
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2635
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2639
    .end local v2    # "i":I
    :cond_2
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    iput v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    .line 2640
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    iput v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    .line 2641
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    iput v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    .line 2642
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    iput v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    .line 2643
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 2645
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasFailCause:Z

    iput-boolean v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasFailCause:Z

    .line 2646
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->failCause:I

    .line 2647
    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateCallFailCauseToV11(I)I

    move-result v3

    iput v3, v2, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->failCause:I

    .line 2649
    nop

    .local v1, "i":I
    :goto_3
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2650
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2649
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2653
    .end local v1    # "i":I
    :cond_3
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    .line 2654
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-boolean v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->hasErrorDetails:Z

    iput-boolean v2, v1, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->hasErrorDetails:Z

    .line 2655
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    .line 2656
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 2659
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsEncrypted:Z

    .line 2660
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isEncrypted:Z

    .line 2661
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsCalledPartyRinging:Z

    .line 2662
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isCalledPartyRinging:Z

    .line 2663
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->historyInfo:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->historyInfo:Ljava/lang/String;

    .line 2664
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsVideoConfSupported:Z

    .line 2665
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isVideoConfSupported:Z

    .line 2667
    return-object v0
.end method

.method public static migrateCallListToV11(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;",
            ">;"
        }
    .end annotation

    .line 2674
    .local p0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;>;"
    if-nez p0, :cond_0

    .line 2675
    const/4 v0, 0x0

    return-object v0

    .line 2677
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2680
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;

    .line 2681
    .local v2, "callInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateCallInfoToV11(Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;

    move-result-object v3

    .line 2682
    .local v3, "info":Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2683
    .end local v2    # "callInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;
    .end local v3    # "info":Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;
    goto :goto_0

    .line 2684
    :cond_1
    return-object v0
.end method

.method public static migrateFromDialRequestV14(Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;)Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    .locals 4
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    .line 947
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;-><init>()V

    .line 949
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->address:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->address:Ljava/lang/String;

    .line 950
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->clirMode:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->clirMode:I

    .line 951
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->presentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->presentation:I

    .line 952
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasCallDetails:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->hasCallDetails:Z

    .line 954
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    .line 955
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    .line 956
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    .line 958
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 959
    .local v2, "extra":Ljava/lang/String;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    .end local v2    # "extra":Ljava/lang/String;
    goto :goto_0

    .line 962
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    .line 963
    .local v2, "localAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    .end local v2    # "localAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    goto :goto_1

    .line 966
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    .line 967
    .local v2, "peerAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    .end local v2    # "peerAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    goto :goto_2

    .line 970
    :cond_2
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    .line 971
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    .line 972
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    .line 973
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    .line 974
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 976
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasIsConferenceUri:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->hasIsConferenceUri:Z

    .line 977
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isConferenceUri:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->isConferenceUri:Z

    .line 978
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasIsCallPull:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->hasIsCallPull:Z

    .line 979
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isCallPull:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->isCallPull:Z

    .line 980
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasIsEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->hasIsEncrypted:Z

    .line 981
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->isEncrypted:Z

    .line 983
    return-object v0
.end method

.method public static migrateHangupRequestInfoFromV13(Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;)Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;
    .locals 4
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;

    .line 2742
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;-><init>()V

    .line 2743
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->connIndex:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->connIndex:I

    .line 2744
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->hasMultiParty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->hasMultiParty:Z

    .line 2745
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->multiParty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->multiParty:Z

    .line 2746
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->connUri:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->connUri:Ljava/lang/String;

    .line 2747
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->conf_id:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->conf_id:I

    .line 2748
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->hasFailCauseResponse:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->hasFailCauseResponse:Z

    .line 2749
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->failCause:I

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateCallFailCausefromV13(I)I

    move-result v2

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->failCause:I

    .line 2752
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    .line 2753
    .local v2, "errorInfo":Ljava/lang/Byte;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2754
    .end local v2    # "errorInfo":Ljava/lang/Byte;
    goto :goto_0

    .line 2756
    :cond_0
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    .line 2757
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-boolean v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->hasErrorDetails:Z

    iput-boolean v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->hasErrorDetails:Z

    .line 2758
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    .line 2760
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 2762
    return-object v0
.end method

.method private static notificationTypeFromHal(I)I
    .locals 1
    .param p0, "inNotificationType"    # I

    .line 1477
    packed-switch p0, :pswitch_data_0

    .line 1483
    const v0, 0x7fffffff

    return v0

    .line 1481
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1479
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static operationFromHal(I)I
    .locals 1
    .param p0, "type"    # I

    .line 2328
    packed-switch p0, :pswitch_data_0

    .line 2334
    const/4 v0, -0x1

    return v0

    .line 2332
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 2330
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static participantStatusFromHal(Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;)Lorg/codeaurora/ims/ParticipantStatusDetails;
    .locals 4
    .param p0, "participantStatusInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;

    .line 2341
    if-nez p0, :cond_0

    .line 2342
    const/4 v0, 0x0

    return-object v0

    .line 2345
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ParticipantStatusDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;-><init>()V

    .line 2347
    .local v0, "participantStatus":Lorg/codeaurora/ims/ParticipantStatusDetails;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->callId:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 2348
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->callId:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setCallId(I)V

    .line 2351
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->operation:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    .line 2352
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->operation:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->operationFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setOperation(I)V

    .line 2355
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->participantUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setParticipantUri(Ljava/lang/String;)V

    .line 2357
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->sipStatus:I

    if-eq v1, v2, :cond_3

    .line 2358
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->sipStatus:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setSipStatus(I)V

    .line 2361
    :cond_3
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->hasIsEct:Z

    if-eqz v1, :cond_4

    .line 2362
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->isEct:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setIsEct(Z)V

    .line 2365
    :cond_4
    return-object v0
.end method

.method public static radioTechFromHal(I)I
    .locals 1
    .param p0, "radioTech"    # I

    .line 769
    packed-switch p0, :pswitch_data_0

    .line 813
    const/16 v0, 0x14

    return v0

    .line 811
    :pswitch_0
    const/16 v0, 0x13

    return v0

    .line 809
    :pswitch_1
    const/16 v0, 0x12

    return v0

    .line 807
    :pswitch_2
    const/16 v0, 0x11

    return v0

    .line 805
    :pswitch_3
    const/16 v0, 0x10

    return v0

    .line 803
    :pswitch_4
    const/16 v0, 0xf

    return v0

    .line 801
    :pswitch_5
    const/16 v0, 0xe

    return v0

    .line 799
    :pswitch_6
    const/16 v0, 0xd

    return v0

    .line 797
    :pswitch_7
    const/16 v0, 0xc

    return v0

    .line 795
    :pswitch_8
    const/16 v0, 0xb

    return v0

    .line 793
    :pswitch_9
    const/16 v0, 0xa

    return v0

    .line 791
    :pswitch_a
    const/16 v0, 0x9

    return v0

    .line 789
    :pswitch_b
    const/16 v0, 0x8

    return v0

    .line 787
    :pswitch_c
    const/4 v0, 0x7

    return v0

    .line 785
    :pswitch_d
    const/4 v0, 0x6

    return v0

    .line 783
    :pswitch_e
    const/4 v0, 0x5

    return v0

    .line 781
    :pswitch_f
    const/4 v0, 0x4

    return v0

    .line 779
    :pswitch_10
    const/4 v0, 0x3

    return v0

    .line 777
    :pswitch_11
    const/4 v0, 0x2

    return v0

    .line 775
    :pswitch_12
    const/4 v0, 0x1

    return v0

    .line 773
    :pswitch_13
    const/4 v0, 0x0

    return v0

    .line 771
    :pswitch_14
    const/4 v0, -0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static regFailureReasonTypeFromHal(I)I
    .locals 1
    .param p0, "inRegFailureReasonType"    # I

    .line 2435
    packed-switch p0, :pswitch_data_0

    .line 2457
    const/4 v0, -0x1

    return v0

    .line 2453
    :pswitch_0
    const/16 v0, 0xa

    return v0

    .line 2451
    :pswitch_1
    const/16 v0, 0x9

    return v0

    .line 2449
    :pswitch_2
    const/16 v0, 0x8

    return v0

    .line 2447
    :pswitch_3
    const/4 v0, 0x7

    return v0

    .line 2445
    :pswitch_4
    const/4 v0, 0x6

    return v0

    .line 2443
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 2441
    :pswitch_6
    const/4 v0, 0x4

    return v0

    .line 2439
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 2437
    :pswitch_8
    const/4 v0, 0x2

    return v0

    .line 2455
    :pswitch_9
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static regStateFromHal(I)I
    .locals 1
    .param p0, "state"    # I

    .line 743
    packed-switch p0, :pswitch_data_0

    .line 751
    const/4 v0, -0x1

    return v0

    .line 747
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 749
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 745
    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static regStateToHal(I)I
    .locals 1
    .param p0, "state"    # I

    .line 756
    packed-switch p0, :pswitch_data_0

    .line 764
    const/4 v0, 0x3

    return v0

    .line 762
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 760
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 758
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static registrationBlockStatusFromHal(ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
    .locals 2
    .param p0, "hasBlockStatusOnWwan"    # Z
    .param p1, "blockStatusOnWwan"    # Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    .param p2, "hasBlockStatusOnWlan"    # Z
    .param p3, "blockStatusOnWlan"    # Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;

    .line 2371
    new-instance v0, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;-><init>()V

    .line 2373
    .local v0, "regBlockStatus":Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
    if-eqz p0, :cond_0

    .line 2374
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->blockStatusFromHal(Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->setStatusOnWwan(Lorg/codeaurora/ims/BlockStatusInfo;)V

    .line 2377
    :cond_0
    if-eqz p2, :cond_1

    .line 2378
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->blockStatusFromHal(Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->setStatusOnWlan(Lorg/codeaurora/ims/BlockStatusInfo;)V

    .line 2381
    :cond_1
    return-object v0
.end method

.method public static registrationFromHal(Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)Lorg/codeaurora/ims/ImsRegistrationInfo;
    .locals 3
    .param p0, "inRegistration"    # Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    .line 702
    const/4 v0, 0x0

    .line 704
    .local v0, "outRegistration":Lorg/codeaurora/ims/ImsRegistrationInfo;
    if-eqz p0, :cond_3

    .line 705
    new-instance v1, Lorg/codeaurora/ims/ImsRegistrationInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;-><init>()V

    move-object v0, v1

    .line 706
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->state:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 707
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->state:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->regStateFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setState(I)V

    .line 710
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorCode:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 711
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorCode:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setErrorCode(I)V

    .line 714
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setErrorMessage(Ljava/lang/String;)V

    .line 716
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->radioTech:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_2

    .line 717
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->radioTech:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->radioTechFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setRadioTech(I)V

    .line 720
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->pAssociatedUris:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setPAssociatedUris(Ljava/lang/String;)V

    .line 723
    :cond_3
    return-object v0
.end method

.method public static requestTypeFromRILRequestType(I)I
    .locals 1
    .param p0, "requestType"    # I

    .line 2534
    packed-switch p0, :pswitch_data_0

    .line 2547
    const/4 v0, -0x1

    return v0

    .line 2544
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 2542
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 2540
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 2538
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 2536
    :pswitch_4
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ringbackToneFromHal(I)I
    .locals 1
    .param p0, "tone"    # I

    .line 1165
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 1171
    const/4 v0, 0x0

    return v0

    .line 1167
    :cond_0
    return v0
.end method

.method public static serviceClassProvisionStatusFromHal(I)I
    .locals 1
    .param p0, "inServiceProvisionStatus"    # I

    .line 1427
    packed-switch p0, :pswitch_data_0

    .line 1433
    const/4 v0, 0x2

    return v0

    .line 1431
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1429
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static serviceClassStatusFromHal(I)I
    .locals 1
    .param p0, "inServiceStatus"    # I

    .line 1416
    packed-switch p0, :pswitch_data_0

    .line 1422
    const/4 v0, -0x1

    return v0

    .line 1418
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1420
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static serviceTypeFromRILServiceType(I)I
    .locals 1
    .param p0, "serviceType"    # I

    .line 2481
    packed-switch p0, :pswitch_data_0

    .line 2530
    const/4 v0, -0x1

    return v0

    .line 2527
    :pswitch_0
    const/16 v0, 0x16

    return v0

    .line 2525
    :pswitch_1
    const/16 v0, 0x15

    return v0

    .line 2523
    :pswitch_2
    const/16 v0, 0x14

    return v0

    .line 2521
    :pswitch_3
    const/16 v0, 0x13

    return v0

    .line 2519
    :pswitch_4
    const/16 v0, 0x12

    return v0

    .line 2517
    :pswitch_5
    const/16 v0, 0x11

    return v0

    .line 2515
    :pswitch_6
    const/16 v0, 0x10

    return v0

    .line 2513
    :pswitch_7
    const/16 v0, 0xf

    return v0

    .line 2511
    :pswitch_8
    const/16 v0, 0xe

    return v0

    .line 2509
    :pswitch_9
    const/16 v0, 0xd

    return v0

    .line 2507
    :pswitch_a
    const/16 v0, 0xc

    return v0

    .line 2505
    :pswitch_b
    const/16 v0, 0xb

    return v0

    .line 2503
    :pswitch_c
    const/16 v0, 0xa

    return v0

    .line 2501
    :pswitch_d
    const/16 v0, 0x9

    return v0

    .line 2499
    :pswitch_e
    const/16 v0, 0x8

    return v0

    .line 2497
    :pswitch_f
    const/4 v0, 0x7

    return v0

    .line 2495
    :pswitch_10
    const/4 v0, 0x6

    return v0

    .line 2493
    :pswitch_11
    const/4 v0, 0x5

    return v0

    .line 2491
    :pswitch_12
    const/4 v0, 0x4

    return v0

    .line 2489
    :pswitch_13
    const/4 v0, 0x3

    return v0

    .line 2487
    :pswitch_14
    const/4 v0, 0x2

    return v0

    .line 2485
    :pswitch_15
    const/4 v0, 0x1

    return v0

    .line 2483
    :pswitch_16
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 3
    .param p0, "errorInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    .line 892
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    .line 893
    .local v0, "sipErrorInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 894
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iput v1, v0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    .line 896
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 897
    return-object v0
.end method

.method public static statusForAccessTechFromHal(Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;)Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .locals 3
    .param p0, "inStatus"    # Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;

    .line 671
    const/4 v0, 0x0

    .line 673
    .local v0, "outStatus":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    if-eqz p0, :cond_4

    .line 674
    new-instance v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v1}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    move-object v0, v1

    .line 675
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->networkMode:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_0

    .line 676
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->networkMode:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->radioTechFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 679
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->status:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 680
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->status:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->statusTypeFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 683
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->restrictCause:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 684
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->restrictCause:I

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 687
    :cond_2
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->hasRegistration:Z

    if-eqz v1, :cond_4

    .line 688
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    if-eqz v1, :cond_3

    .line 690
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->state:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->regStateFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    goto :goto_0

    .line 692
    :cond_3
    const/4 v1, 0x2

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 693
    const-class v1, Lorg/codeaurora/ims/ImsRadioUtils;

    const-string v2, "Registered not sent"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 698
    :cond_4
    :goto_0
    return-object v0
.end method

.method public static statusReportfromHidl(Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;)Lorg/codeaurora/ims/sms/StatusReport;
    .locals 4
    .param p0, "report"    # Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;

    .line 518
    new-instance v0, Lorg/codeaurora/ims/sms/StatusReport;

    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;->messageRef:I

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;->format:Ljava/lang/String;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;->pdu:Ljava/util/ArrayList;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->getSmsPdu(Ljava/util/ArrayList;)[B

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/codeaurora/ims/sms/StatusReport;-><init>(ILjava/lang/String;[B)V

    return-object v0
.end method

.method public static statusTypeFromHal(I)I
    .locals 1
    .param p0, "status"    # I

    .line 1069
    packed-switch p0, :pswitch_data_0

    .line 1078
    const/4 v0, 0x3

    return v0

    .line 1075
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1073
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1071
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static statusTypeToHal(I)I
    .locals 1
    .param p0, "status"    # I

    .line 1054
    packed-switch p0, :pswitch_data_0

    .line 1064
    const/4 v0, 0x4

    return v0

    .line 1062
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 1060
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 1058
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 1056
    :pswitch_3
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static suppServiceNotificationFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;)Lorg/codeaurora/ims/SuppNotifyInfo;
    .locals 3
    .param p0, "inNotification"    # Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;

    .line 1439
    if-nez p0, :cond_0

    .line 1440
    const/4 v0, 0x0

    return-object v0

    .line 1443
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/SuppNotifyInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/SuppNotifyInfo;-><init>()V

    .line 1445
    .local v0, "outNotification":Lorg/codeaurora/ims/SuppNotifyInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->notificationType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1446
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->notificationType:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->notificationTypeFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setNotificationType(I)V

    .line 1450
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->code:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 1451
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->code:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setCode(I)V

    .line 1454
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->index:I

    if-eq v1, v2, :cond_3

    .line 1455
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->index:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setIndex(I)V

    .line 1458
    :cond_3
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->type:I

    if-eq v1, v2, :cond_4

    .line 1459
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->type:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setType(I)V

    .line 1462
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->connId:I

    if-eq v1, v2, :cond_5

    .line 1463
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->connId:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setConnId(I)V

    .line 1466
    :cond_5
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setNumber(Ljava/lang/String;)V

    .line 1467
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->historyInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setHistoryInfo(Ljava/lang/String;)V

    .line 1469
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->hasHoldTone:Z

    if-eqz v1, :cond_6

    .line 1470
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->holdTone:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setHoldTone(Z)V

    .line 1473
    :cond_6
    return-object v0
.end method

.method public static suppSvcStatusResponseFromHal(Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;)Lorg/codeaurora/ims/SuppSvcResponse;
    .locals 9
    .param p0, "suppServiceStatus"    # Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;

    .line 1567
    new-instance v0, Lorg/codeaurora/ims/SuppSvcResponse;

    invoke-direct {v0}, Lorg/codeaurora/ims/SuppSvcResponse;-><init>()V

    .line 1569
    .local v0, "suppSvcResponse":Lorg/codeaurora/ims/SuppSvcResponse;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->status:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->serviceClassStatusFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setStatus(I)V

    .line 1571
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->provisionStatus:I

    .line 1572
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->serviceClassProvisionStatusFromHal(I)I

    move-result v1

    .line 1571
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setProvisionStatus(I)V

    .line 1574
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->facilityType:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    .line 1575
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->facilityType:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->FacilityTypeFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setFacilityType(I)V

    .line 1578
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->failureCause:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->failureCause:Ljava/lang/String;

    .line 1579
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1580
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->failureCause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setFailureCause(Ljava/lang/String;)V

    .line 1583
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->cbNumListInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    .line 1584
    .local v2, "numList":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    iget v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->serviceClass:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_2

    .line 1585
    goto :goto_0

    .line 1587
    :cond_2
    new-instance v3, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;

    iget v4, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->serviceClass:I

    invoke-direct {v3, v4}, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;-><init>(I)V

    .line 1590
    .local v3, "lines":Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;
    iget-object v4, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->cbNumInfo:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 1591
    iget-object v4, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->cbNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;

    .line 1592
    .local v5, "numInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;
    new-instance v6, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;

    iget v7, v5, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;->status:I

    iget-object v8, v5, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;->number:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;-><init>(ILjava/lang/String;)V

    .line 1595
    .local v6, "lineStatus":Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;
    invoke-virtual {v3, v6}, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;->addLine(Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;)V

    .line 1596
    .end local v5    # "numInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;
    .end local v6    # "lineStatus":Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;
    goto :goto_1

    .line 1598
    :cond_3
    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/SuppSvcResponse;->addBarredLines(Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;)V

    .line 1599
    .end local v2    # "numList":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    .end local v3    # "lines":Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;
    goto :goto_0

    .line 1601
    :cond_4
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->hasErrorDetails:Z

    if-eqz v1, :cond_5

    .line 1602
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setErrorDetails(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1604
    :cond_5
    return-object v0
.end method

.method public static teleserviceTypeFromRILTeleserviceType(I)I
    .locals 1
    .param p0, "teleservice"    # I

    .line 2551
    packed-switch p0, :pswitch_data_0

    .line 2566
    const/4 v0, -0x1

    return v0

    .line 2563
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 2561
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 2559
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2557
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2555
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 2553
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toCallSubstateConstants(I)I
    .locals 1
    .param p0, "callSubstate"    # I

    .line 727
    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 738
    const/4 v0, 0x0

    return v0

    .line 731
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 729
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 735
    :cond_0
    return v0

    .line 733
    :cond_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ttyModeFromHal(I)I
    .locals 1
    .param p0, "ttyMode"    # I

    .line 1620
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1630
    return v0

    .line 1628
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 1626
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 1624
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 1622
    :pswitch_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ttyModeToHal(I)I
    .locals 1
    .param p0, "ttyMode"    # I

    .line 1635
    packed-switch p0, :pswitch_data_0

    .line 1645
    const/4 v0, 0x4

    return v0

    .line 1641
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 1639
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 1637
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 1643
    :pswitch_3
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static unpackAccTechStatus(Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;)[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .locals 5
    .param p0, "info"    # Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    .line 652
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 654
    .local v0, "statusListLen":I
    new-array v1, v0, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 657
    .local v1, "statusForAccessTech":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 658
    new-instance v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v3}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v3, v1, v2

    .line 659
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->statusForAccessTechFromHal(Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;)Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    move-result-object v3

    aput-object v3, v1, v2

    .line 660
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " networkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " restrictCause = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " registered = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 657
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 666
    .end local v2    # "j":I
    :cond_0
    return-object v1
.end method

.method public static voWiFiCallQualityFromHal(I)Ljava/lang/Object;
    .locals 3
    .param p0, "voWiFiCallQuality"    # I

    .line 2462
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 2463
    .local v1, "ret":[I
    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 2474
    aput v2, v1, v2

    goto :goto_0

    .line 2471
    :pswitch_0
    const/4 v0, 0x4

    aput v0, v1, v2

    .line 2472
    goto :goto_0

    .line 2468
    :pswitch_1
    const/4 v0, 0x2

    aput v0, v1, v2

    .line 2469
    goto :goto_0

    .line 2465
    :pswitch_2
    aput v0, v1, v2

    .line 2466
    nop

    .line 2477
    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
