.class public Lcom/qualcomm/location/LocationService;
.super Landroid/app/Service;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/location/LocationService$ReportAgpsStatusMessage;,
        Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;,
        Lcom/qualcomm/location/LocationService$LocNetworkCallback;,
        Lcom/qualcomm/location/LocationService$LocSvcMsgObj;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final DOWNLOAD_XTRA_DATA:I = 0x6

.field private static final DOWNLOAD_XTRA_DATA_FINISHED:I = 0xb

.field private static final ENABLE:I = 0x2

.field private static final GET_DEFAULT_APN_FINISHED:I = 0xd

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final HANDLE_NETWORK_CALLBACK:I = 0x3

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final INJECT_NTP_TIME_FINISHED:I = 0xa

.field private static final NETWORK_AVAILABLE:I = 0x1

.field private static final NETWORK_REQUEST_TIMEOUT_MS:I = 0x7148

.field private static final NETWORK_UNAVAILABLE:I = 0x0

.field private static final REPORT_AGPS_STATUS:I = 0xc

.field private static final TAG:Ljava/lang/String; = "LocSvc_java"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "LocationService"

.field private static mAGpsConnections:[Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;


# instance fields
.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultApn:Ljava/lang/String;

.field private mEnabled:Z

.field private mEngineCapabilities:I

.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private mNIHandler:Lcom/qualcomm/location/GpsNetInitiatedHandler;

.field private mNTPRetryTimes:I

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mPeriodicTimeInjection:Z

.field private mSupportsXtra:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiConnectivity:Z

.field private mWwanConnectivity:Z

.field private mXtraDataRetryTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 90
    const-string v0, "LocSvc_java"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/location/LocationService;->DEBUG:Z

    .line 580
    invoke-static {}, Lcom/qualcomm/location/LocationService;->class_init_native()V

    .line 603
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    sput-object v0, Lcom/qualcomm/location/LocationService;->mAGpsConnections:[Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    .line 910
    const-string v0, "locationservice_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 911
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/location/LocationService;->mWifiConnectivity:Z

    .line 145
    iput-boolean v0, p0, Lcom/qualcomm/location/LocationService;->mWwanConnectivity:Z

    .line 148
    iput v0, p0, Lcom/qualcomm/location/LocationService;->mNTPRetryTimes:I

    .line 149
    iput v0, p0, Lcom/qualcomm/location/LocationService;->mXtraDataRetryTimes:I

    .line 155
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/LocationService;->mLock:Ljava/lang/Object;

    .line 211
    new-instance v0, Lcom/qualcomm/location/LocationService$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/LocationService$1;-><init>(Lcom/qualcomm/location/LocationService;)V

    iput-object v0, p0, Lcom/qualcomm/location/LocationService;->mHandler:Landroid/os/Handler;

    .line 462
    new-instance v0, Lcom/qualcomm/location/LocationService$3;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/LocationService$3;-><init>(Lcom/qualcomm/location/LocationService;)V

    iput-object v0, p0, Lcom/qualcomm/location/LocationService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/location/LocationService;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/LocationService;

    .line 88
    invoke-direct {p0}, Lcom/qualcomm/location/LocationService;->handleEnable()V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/location/LocationService;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/LocationService;

    .line 88
    invoke-direct {p0}, Lcom/qualcomm/location/LocationService;->handleDisable()V

    return-void
.end method

.method static synthetic access$1200(Lcom/qualcomm/location/LocationService;IILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/LocationService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/location/LocationService;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1700()Z
    .locals 1

    .line 88
    sget-boolean v0, Lcom/qualcomm/location/LocationService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/qualcomm/location/LocationService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/LocationService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/location/LocationService;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/location/LocationService;Lcom/qualcomm/location/LocationService$ReportAgpsStatusMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/LocationService;
    .param p1, "x1"    # Lcom/qualcomm/location/LocationService$ReportAgpsStatusMessage;

    .line 88
    invoke-direct {p0, p1}, Lcom/qualcomm/location/LocationService;->handleReportAgpsStatus(Lcom/qualcomm/location/LocationService$ReportAgpsStatusMessage;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/qualcomm/location/LocationService;IIILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/LocationService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/Object;

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/location/LocationService;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/qualcomm/location/LocationService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/LocationService;

    .line 88
    iget-object v0, p0, Lcom/qualcomm/location/LocationService;->mDefaultApn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/qualcomm/location/LocationService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/LocationService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/qualcomm/location/LocationService;->mDefaultApn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/qualcomm/location/LocationService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/LocationService;

    .line 88
    invoke-direct {p0}, Lcom/qualcomm/location/LocationService;->getDefaultApn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/qualcomm/location/LocationService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/LocationService;

    .line 88
    iget-object v0, p0, Lcom/qualcomm/location/LocationService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/qualcomm/location/LocationService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/LocationService;
    .param p1, "x1"    # I

    .line 88
    invoke-direct {p0, p1}, Lcom/qualcomm/location/LocationService;->native_agps_data_conn_closed(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/qualcomm/location/LocationService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/LocationService;
    .param p1, "x1"    # I

    .line 88
    invoke-direct {p0, p1}, Lcom/qualcomm/location/LocationService;->native_agps_data_conn_failed(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/location/LocationService;IILandroid/net/Network;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/LocationService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/net/Network;

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/location/LocationService;->handleNetworkCallback(IILandroid/net/Network;)V

    return-void
.end method

.method static synthetic access$400(Lcom/qualcomm/location/LocationService;Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/LocationService;
    .param p1, "x1"    # Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    .line 88
    invoke-direct {p0, p1}, Lcom/qualcomm/location/LocationService;->handleAgpsConnOpen(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/qualcomm/location/LocationService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/LocationService;

    .line 88
    iget-object v0, p0, Lcom/qualcomm/location/LocationService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private static native class_init_native()V
.end method

.method private getAGpsConnectionInfo(I)Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;
    .locals 5
    .param p1, "connType"    # I

    .line 605
    sget-boolean v0, Lcom/qualcomm/location/LocationService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LocSvc_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAGpsConnectionInfo connType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 630
    return-object v2

    .line 625
    :pswitch_0
    sget-object v0, Lcom/qualcomm/location/LocationService;->mAGpsConnections:[Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 626
    sget-object v0, Lcom/qualcomm/location/LocationService;->mAGpsConnections:[Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    new-instance v3, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4, p1, v2}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;-><init>(Lcom/qualcomm/location/LocationService;IILcom/qualcomm/location/LocationService$1;)V

    aput-object v3, v0, v1

    .line 628
    :cond_1
    sget-object v0, Lcom/qualcomm/location/LocationService;->mAGpsConnections:[Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    aget-object v0, v0, v1

    return-object v0

    .line 620
    :pswitch_1
    sget-object v1, Lcom/qualcomm/location/LocationService;->mAGpsConnections:[Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    if-nez v1, :cond_2

    .line 621
    sget-object v1, Lcom/qualcomm/location/LocationService;->mAGpsConnections:[Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    new-instance v4, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    invoke-direct {v4, p0, v0, p1, v2}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;-><init>(Lcom/qualcomm/location/LocationService;IILcom/qualcomm/location/LocationService$1;)V

    aput-object v4, v1, v3

    .line 623
    :cond_2
    sget-object v0, Lcom/qualcomm/location/LocationService;->mAGpsConnections:[Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    aget-object v0, v0, v3

    return-object v0

    .line 610
    :pswitch_2
    sget-object v0, Lcom/qualcomm/location/LocationService;->mAGpsConnections:[Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    .line 611
    sget-object v0, Lcom/qualcomm/location/LocationService;->mAGpsConnections:[Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    new-instance v3, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    invoke-direct {v3, p0, v1, p1, v2}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;-><init>(Lcom/qualcomm/location/LocationService;IILcom/qualcomm/location/LocationService$1;)V

    aput-object v3, v0, v1

    .line 613
    :cond_3
    sget-object v0, Lcom/qualcomm/location/LocationService;->mAGpsConnections:[Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    aget-object v0, v0, v1

    return-object v0

    .line 615
    :pswitch_3
    sget-object v3, Lcom/qualcomm/location/LocationService;->mAGpsConnections:[Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    aget-object v3, v3, v0

    if-nez v3, :cond_4

    .line 616
    sget-object v3, Lcom/qualcomm/location/LocationService;->mAGpsConnections:[Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    new-instance v4, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    invoke-direct {v4, p0, v1, p1, v2}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;-><init>(Lcom/qualcomm/location/LocationService;IILcom/qualcomm/location/LocationService$1;)V

    aput-object v4, v3, v0

    .line 618
    :cond_4
    sget-object v1, Lcom/qualcomm/location/LocationService;->mAGpsConnections:[Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    aget-object v0, v1, v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDefaultApn()Ljava/lang/String;
    .locals 8

    .line 550
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 551
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    move-object v7, v1

    .line 554
    .local v7, "apn":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/LocationService;->mContext:Landroid/content/Context;

    .line 555
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "apn"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "name ASC"

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 559
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 560
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    .end local v7    # "apn":Ljava/lang/String;
    .local v2, "apn":Ljava/lang/String;
    move-object v7, v2

    .end local v2    # "apn":Ljava/lang/String;
    .restart local v7    # "apn":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 564
    goto :goto_0

    .line 563
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 568
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 569
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "LocSvc_java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " on mContext.getContentResolver().query"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 566
    :catch_1
    move-exception v1

    .line 567
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v2, "LocSvc_java"

    const-string v3, "SQLiteException on mContext.getContentResolver().query"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_1
    :goto_0
    nop

    .line 572
    :goto_1
    if-nez v7, :cond_2

    .line 573
    const-string v7, "dummy-apn"

    .line 576
    :cond_2
    sget-boolean v1, Lcom/qualcomm/location/LocationService;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "LocSvc_java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultApn() returns: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_3
    return-object v7
.end method

.method private handleAgpsConnOpen(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;)V
    .locals 3
    .param p1, "agpsConnInfo"    # Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    .line 444
    if-nez p1, :cond_1

    .line 445
    sget-boolean v0, Lcom/qualcomm/location/LocationService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LocSvc_java"

    const-string v1, "handleAgpsConnOpen agpsConnInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    return-void

    .line 449
    :cond_1
    sget-boolean v0, Lcom/qualcomm/location/LocationService;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 450
    const-string v0, "LocSvc_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAgpsConnOpen mAgpsType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->access$1500(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mAPN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-static {p1}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->access$700(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mBearerType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->access$1600(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 450
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_2
    nop

    .line 454
    invoke-static {p1}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->access$1500(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;)I

    move-result v0

    .line 455
    invoke-static {p1}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->access$700(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;)Ljava/lang/String;

    move-result-object v1

    .line 456
    invoke-static {p1}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->access$1600(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;)I

    move-result v2

    .line 453
    invoke-direct {p0, v0, v1, v2}, Lcom/qualcomm/location/LocationService;->native_agps_data_conn_open(ILjava/lang/String;I)V

    .line 457
    return-void
.end method

.method private handleDisable()V
    .locals 2

    .line 318
    sget-boolean v0, Lcom/qualcomm/location/LocationService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LocSvc_java"

    const-string v1, "handleDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/LocationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_0
    iget-boolean v1, p0, Lcom/qualcomm/location/LocationService;->mEnabled:Z

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    .line 322
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qualcomm/location/LocationService;->mEnabled:Z

    .line 323
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    invoke-direct {p0}, Lcom/qualcomm/location/LocationService;->native_cleanup()V

    .line 327
    return-void

    .line 323
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleEnable()V
    .locals 3

    .line 294
    sget-boolean v0, Lcom/qualcomm/location/LocationService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LocSvc_java"

    const-string v1, "handleEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/LocationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_0
    iget-boolean v1, p0, Lcom/qualcomm/location/LocationService;->mEnabled:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    .line 298
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qualcomm/location/LocationService;->mEnabled:Z

    .line 299
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 301
    invoke-direct {p0}, Lcom/qualcomm/location/LocationService;->native_init()Z

    move-result v2

    .line 303
    .local v2, "enabled":Z
    if-eqz v2, :cond_2

    .line 304
    iput-boolean v1, p0, Lcom/qualcomm/location/LocationService;->mSupportsXtra:Z

    goto :goto_0

    .line 306
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/location/LocationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 307
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/qualcomm/location/LocationService;->mEnabled:Z

    .line 308
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    const-string v0, "LocSvc_java"

    const-string v1, "Failed to enable location provider"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :goto_0
    return-void

    .line 308
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 299
    .end local v2    # "enabled":Z
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private handleNetworkCallback(IILandroid/net/Network;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "connType"    # I
    .param p3, "network"    # Landroid/net/Network;

    .line 251
    iget-object v0, p0, Lcom/qualcomm/location/LocationService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p3}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 253
    .local v0, "info":Landroid/net/NetworkInfo;
    sget-boolean v1, Lcom/qualcomm/location/LocationService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 254
    const-string v1, "LocSvc_java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNetworkCallback connTyp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " network:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    invoke-direct {p0, p2}, Lcom/qualcomm/location/LocationService;->getAGpsConnectionInfo(I)Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    move-result-object v1

    .line 259
    .local v1, "agpsConnInfo":Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;
    if-eqz v1, :cond_5

    .line 260
    invoke-static {v1}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->access$600(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 261
    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 262
    sget-boolean v3, Lcom/qualcomm/location/LocationService;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "LocSvc_java"

    const-string v4, "call native_agps_data_conn_failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_1
    invoke-static {v1, v2}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->access$702(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    const/4 v2, 0x0

    invoke-static {v1, p2, v2}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->access$800(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;IZ)V

    .line 265
    invoke-static {v1, v2}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->access$602(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;I)I

    goto :goto_0

    .line 267
    :cond_2
    sget-boolean v3, Lcom/qualcomm/location/LocationService;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "LocSvc_java"

    const-string v4, "run thread to collect agpsConnInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_3
    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->access$602(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;I)I

    .line 270
    new-instance v3, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    invoke-direct {v3, p0, v1, v2}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;-><init>(Lcom/qualcomm/location/LocationService;Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;Lcom/qualcomm/location/LocationService$1;)V

    move-object v2, v3

    .line 271
    .local v2, "agpsConnInfoForApn":Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;
    new-instance v3, Lcom/qualcomm/location/LocationService$2;

    invoke-direct {v3, p0, v2, v0}, Lcom/qualcomm/location/LocationService$2;-><init>(Lcom/qualcomm/location/LocationService;Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;Landroid/net/NetworkInfo;)V

    .line 280
    .local v3, "getApnInfo":Ljava/lang/Runnable;
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v4, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 281
    .end local v2    # "agpsConnInfoForApn":Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;
    .end local v3    # "getApnInfo":Ljava/lang/Runnable;
    goto :goto_0

    .line 283
    :cond_4
    sget-boolean v2, Lcom/qualcomm/location/LocationService;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 284
    const-string v2, "LocSvc_java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "agpsConnInfo.mState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->access$600(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_5
    :goto_0
    return-void
.end method

.method private handleReportAgpsStatus(Lcom/qualcomm/location/LocationService$ReportAgpsStatusMessage;)V
    .locals 8
    .param p1, "rasm"    # Lcom/qualcomm/location/LocationService$ReportAgpsStatusMessage;

    .line 371
    iget v0, p1, Lcom/qualcomm/location/LocationService$ReportAgpsStatusMessage;->type:I

    .line 372
    .local v0, "type":I
    iget v1, p1, Lcom/qualcomm/location/LocationService$ReportAgpsStatusMessage;->apnTypeMask:I

    .line 373
    .local v1, "apnTypeMask":I
    iget v2, p1, Lcom/qualcomm/location/LocationService$ReportAgpsStatusMessage;->status:I

    .line 375
    .local v2, "status":I
    sget-boolean v3, Lcom/qualcomm/location/LocationService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "LocSvc_java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleReportAgpsStatus with type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " apnTypeMask = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    invoke-direct {p0, v0}, Lcom/qualcomm/location/LocationService;->getAGpsConnectionInfo(I)Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    move-result-object v3

    .line 380
    .local v3, "agpsConnInfo":Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;
    if-nez v3, :cond_2

    .line 381
    sget-boolean v4, Lcom/qualcomm/location/LocationService;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "LocSvc_java"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reportAGpsStatus agpsConnInfo is null for type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_1
    return-void

    .line 386
    :cond_2
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 438
    :pswitch_0
    sget-boolean v4, Lcom/qualcomm/location/LocationService;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string v4, "LocSvc_java"

    const-string v5, "GPS_AGPS_DATA_CONN_FAILED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 435
    :pswitch_1
    sget-boolean v4, Lcom/qualcomm/location/LocationService;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string v4, "LocSvc_java"

    const-string v5, "GPS_AGPS_DATA_CONN_DONE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 432
    :pswitch_2
    sget-boolean v4, Lcom/qualcomm/location/LocationService;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string v4, "LocSvc_java"

    const-string v5, "GPS_AGPS_DATA_CONNECTED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 408
    :pswitch_3
    sget-boolean v4, Lcom/qualcomm/location/LocationService;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "LocSvc_java"

    const-string v5, "GPS_RELEASE_AGPS_DATA_CONN"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_3
    packed-switch v0, :pswitch_data_1

    .line 426
    sget-boolean v4, Lcom/qualcomm/location/LocationService;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "LocSvc_java"

    const-string v5, "GPS_RELEASE_AGPS_DATA_CONN but current network state is unknown!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 417
    :pswitch_4
    invoke-static {v3}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->access$600(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;)I

    move-result v4

    if-nez v4, :cond_4

    .line 418
    const-string v4, "LocSvc_java"

    const-string v5, "Release in CLOSED state !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 420
    :cond_4
    const/4 v4, 0x1

    invoke-static {v3, v0, v4}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->access$800(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;IZ)V

    .line 421
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->access$602(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;I)I

    .line 423
    goto :goto_1

    .line 427
    :cond_5
    :goto_0
    return-void

    .line 388
    :pswitch_5
    sget-boolean v4, Lcom/qualcomm/location/LocationService;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "LocSvc_java"

    const-string v5, "GPS_REQUEST_AGPS_DATA_CONN"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_6
    packed-switch v0, :pswitch_data_2

    .line 403
    sget-boolean v4, Lcom/qualcomm/location/LocationService;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string v4, "LocSvc_java"

    const-string v5, "type == unknown"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 397
    :pswitch_6
    iget-object v4, p0, Lcom/qualcomm/location/LocationService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-static {v3}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->access$1300(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 398
    .local v4, "info":Landroid/net/NetworkInfo;
    sget-boolean v5, Lcom/qualcomm/location/LocationService;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "LocSvc_java"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_7
    invoke-static {v3, v0, v1}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->access$1400(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;II)V

    .line 400
    nop

    .line 441
    .end local v4    # "info":Landroid/net/NetworkInfo;
    :cond_8
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private hasCapability(I)Z
    .locals 1
    .param p1, "capability"    # I

    .line 336
    iget v0, p0, Lcom/qualcomm/location/LocationService;->mEngineCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private native native_agps_data_conn_closed(I)V
.end method

.method private native native_agps_data_conn_failed(I)V
.end method

.method private native native_agps_data_conn_open(ILjava/lang/String;I)V
.end method

.method private native native_cleanup()V
.end method

.method private native native_init()Z
.end method

.method private native native_inject_time(JJI)V
.end method

.method private native native_inject_xtra_data([BI)V
.end method

.method private native native_request_xtra_server()I
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private reportAGpsStatus(III)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "apnTypeMask"    # I
    .param p3, "status"    # I

    .line 355
    sget-boolean v0, Lcom/qualcomm/location/LocationService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LocSvc_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportAGpsStatus with type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " apnTypeMask = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    new-instance v0, Lcom/qualcomm/location/LocationService$ReportAgpsStatusMessage;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/qualcomm/location/LocationService$ReportAgpsStatusMessage;-><init>(Lcom/qualcomm/location/LocationService;III)V

    .line 362
    .local v0, "rasm":Lcom/qualcomm/location/LocationService$ReportAgpsStatusMessage;
    new-instance v1, Lcom/qualcomm/location/LocationService$LocSvcMsgObj;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/qualcomm/location/LocationService$LocSvcMsgObj;-><init>(Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 363
    .local v1, "obj":Lcom/qualcomm/location/LocationService$LocSvcMsgObj;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 364
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0xc

    iput v3, v2, Landroid/os/Message;->what:I

    .line 365
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 367
    iget-object v3, p0, Lcom/qualcomm/location/LocationService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 368
    return-void
.end method

.method private requestUtcTime()V
    .locals 3

    .line 546
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/qualcomm/location/LocationService;->sendMessage(IILjava/lang/Object;)V

    .line 547
    return-void
.end method

.method private sendMessage(IIILjava/lang/Object;)V
    .locals 3
    .param p1, "message"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 197
    sget-boolean v0, Lcom/qualcomm/location/LocationService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "LocSvc_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " arg1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " arg2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/LocationService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 203
    iget-object v0, p0, Lcom/qualcomm/location/LocationService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qualcomm/location/LocationService$LocSvcMsgObj;

    const/4 v2, 0x1

    .line 204
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p4, v2}, Lcom/qualcomm/location/LocationService$LocSvcMsgObj;-><init>(Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 203
    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 205
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .locals 1
    .param p1, "message"    # I
    .param p2, "arg"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 208
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/qualcomm/location/LocationService;->sendMessage(IIILjava/lang/Object;)V

    .line 209
    return-void
.end method

.method private setEngineCapabilities(I)V
    .locals 1
    .param p1, "capabilities"    # I

    .line 343
    iput p1, p0, Lcom/qualcomm/location/LocationService;->mEngineCapabilities:I

    .line 345
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/qualcomm/location/LocationService;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/qualcomm/location/LocationService;->mPeriodicTimeInjection:Z

    if-nez v0, :cond_0

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/location/LocationService;->mPeriodicTimeInjection:Z

    .line 347
    invoke-direct {p0}, Lcom/qualcomm/location/LocationService;->requestUtcTime()V

    .line 349
    :cond_0
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 3

    .line 314
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/qualcomm/location/LocationService;->sendMessage(IILjava/lang/Object;)V

    .line 315
    return-void
.end method

.method public enable()V
    .locals 3

    .line 290
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/qualcomm/location/LocationService;->sendMessage(IILjava/lang/Object;)V

    .line 291
    return-void
.end method

.method public isEnabled()Z
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/qualcomm/location/LocationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_0
    iget-boolean v1, p0, Lcom/qualcomm/location/LocationService;->mEnabled:Z

    monitor-exit v0

    return v1

    .line 332
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 170
    sget-boolean v0, Lcom/qualcomm/location/LocationService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "LocSvc_java"

    const-string v1, "onCreate "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    iput-object p0, p0, Lcom/qualcomm/location/LocationService;->mContext:Landroid/content/Context;

    .line 175
    new-instance v0, Lcom/qualcomm/location/GpsNetInitiatedHandler;

    iget-object v1, p0, Lcom/qualcomm/location/LocationService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/location/LocationService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;)V

    iput-object v0, p0, Lcom/qualcomm/location/LocationService;->mNIHandler:Lcom/qualcomm/location/GpsNetInitiatedHandler;

    .line 178
    iget-object v0, p0, Lcom/qualcomm/location/LocationService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 179
    .local v0, "powerManager":Landroid/os/PowerManager;
    const-string v1, "LocationService"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/location/LocationService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 180
    iget-object v1, p0, Lcom/qualcomm/location/LocationService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 182
    iget-object v1, p0, Lcom/qualcomm/location/LocationService;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/qualcomm/location/LocationService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 184
    invoke-virtual {p0}, Lcom/qualcomm/location/LocationService;->enable()V

    .line 186
    return-void
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 18
    .param p1, "notificationId"    # I
    .param p2, "niType"    # I
    .param p3, "notifyFlags"    # I
    .param p4, "timeout"    # I
    .param p5, "defaultResponse"    # I
    .param p6, "requestorId"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/String;
    .param p8, "requestorIdEncoding"    # I
    .param p9, "textEncoding"    # I
    .param p10, "extras"    # Ljava/lang/String;
    .param p11, "esEnabled"    # Z

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 491
    const-string v0, "LocSvc_java"

    const-string v10, "reportNiNotification: entered"

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const-string v0, "LocSvc_java"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notificationId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", niType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", notifyFlags: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", timeout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", defaultResponse: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const-string v0, "LocSvc_java"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "requestorId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", text: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", requestorIdEncoding: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", textEncoding: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    new-instance v0, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v0}, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    move-object v10, v0

    .line 505
    .local v10, "notification":Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput v1, v10, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 506
    iput v2, v10, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 507
    and-int/lit8 v0, v3, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    iput-boolean v0, v10, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 508
    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_1

    move v0, v12

    goto :goto_1

    :cond_1
    move v0, v11

    :goto_1
    iput-boolean v0, v10, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 509
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_2

    move v11, v12

    nop

    :cond_2
    iput-boolean v11, v10, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 510
    iput v4, v10, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 511
    iput v5, v10, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 512
    iput-object v6, v10, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 513
    iput-object v7, v10, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 514
    iput v8, v10, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 515
    iput v9, v10, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 519
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v11, v0

    .line 521
    .local v11, "bundle":Landroid/os/Bundle;
    if-nez p10, :cond_3

    const-string v0, ""

    .line 522
    .end local p10    # "extras":Ljava/lang/String;
    .local v0, "extras":Ljava/lang/String;
    move-object v12, v0

    goto :goto_2

    .end local v0    # "extras":Ljava/lang/String;
    .restart local p10    # "extras":Ljava/lang/String;
    :cond_3
    move-object/from16 v12, p10

    .end local p10    # "extras":Ljava/lang/String;
    .local v12, "extras":Ljava/lang/String;
    :goto_2
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    move-object v13, v0

    .line 525
    .local v13, "extraProp":Ljava/util/Properties;
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, v12}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    goto :goto_3

    .line 527
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Ljava/io/IOException;
    const-string v14, "LocSvc_java"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "reportNiNotification cannot parse extras data: "

    .end local v0    # "e":Ljava/io/IOException;
    .local v16, "e":Ljava/io/IOException;
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    .end local v16    # "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v13}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 534
    .local v14, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v11, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    .end local v14    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    nop

    .line 532
    move-object/from16 v0, v17

    goto :goto_4

    .line 537
    :cond_4
    iput-object v11, v10, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->extras:Landroid/os/Bundle;

    .line 539
    move-object/from16 v14, p0

    iget-object v0, v14, Lcom/qualcomm/location/LocationService;->mNIHandler:Lcom/qualcomm/location/GpsNetInitiatedHandler;

    move/from16 v15, p11

    invoke-virtual {v0, v10, v15}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;Z)V

    .line 540
    return-void
.end method
