.class Lcom/qualcomm/location/izatprovider/IzatProvider;
.super Lcom/android/location/provider/LocationProviderBase;
.source "IzatProvider.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/location/izatprovider/IzatProvider$RequestParams;,
        Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;
    }
.end annotation


# static fields
.field private static final GNSS_ENGINE_OFF:I = 0x7

.field private static final GNSS_ENGINE_ON:I = 0x6

.field private static final GNSS_SESSION_BEGIN:I = 0x4

.field private static final GNSS_SESSION_END:I = 0x5

.field private static IZAT_HORIZONTAL_BLOCK:I = 0x0

.field private static IZAT_HORIZONTAL_FINE:I = 0x0

.field private static IZAT_HORIZONTAL_NONE:I = 0x0

.field private static IZAT_STREAM_FUSED:I = 0x0

.field private static IZAT_STREAM_NETWORK:I = 0x0

.field private static final MSG_DESTROY_ENGINE:I = 0x29a

.field private static final MSG_DISABLE_PROVIDER:I = 0xde

.field private static final MSG_ENABLE_PROVIDER:I = 0x6f

.field private static final MSG_INIT:I = 0x309

.field private static final MSG_LOCATION_CHANGED:I = 0x1bc

.field private static final MSG_SET_REQUEST:I = 0x14d

.field private static final MSG_STATUS_CHANGED:I = 0x22b

.field static final NLP_TYPE_KEY:Ljava/lang/String; = "networkLocationType"

.field private static mProviderContext:Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;


# instance fields
.field private final DBG:Z

.field private final NAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mActiveWorkSource:Landroid/os/WorkSource;

.field private mAppOpsMgr:Landroid/app/AppOpsManager;

.field private mHandler:Landroid/os/Handler;

.field private final mHighPowerCapable:Z

.field private final mIzatProviderType:I

.field private mNavigating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 459
    const-string v0, "locationservice_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 463
    invoke-static {}, Lcom/qualcomm/location/izatprovider/IzatProvider;->nativeOnClassLoad()V

    .line 464
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/android/location/provider/ProviderPropertiesUnbundled;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "providerType"    # I
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "properties"    # Lcom/android/location/provider/ProviderPropertiesUnbundled;

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IzatProvider_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/android/location/provider/LocationProviderBase;-><init>(Ljava/lang/String;Lcom/android/location/provider/ProviderPropertiesUnbundled;)V

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "ipc":Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IzatProvider_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->TAG:Ljava/lang/String;

    .line 234
    iget-object v1, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->DBG:Z

    .line 235
    iput-object p3, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->NAME:Ljava/lang/String;

    .line 236
    iput p2, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mIzatProviderType:I

    .line 237
    iget v1, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mIzatProviderType:I

    sget v2, Lcom/qualcomm/location/izatprovider/IzatProvider;->IZAT_STREAM_FUSED:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mHighPowerCapable:Z

    .line 238
    sget-object v1, Lcom/qualcomm/location/izatprovider/IzatProvider;->mProviderContext:Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    if-nez v1, :cond_1

    .line 239
    new-instance v1, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;-><init>(Landroid/content/Context;Lcom/qualcomm/location/izatprovider/IzatProvider$1;)V

    sput-object v1, Lcom/qualcomm/location/izatprovider/IzatProvider;->mProviderContext:Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    .line 240
    sget-object v0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mProviderContext:Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    .line 242
    :cond_1
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/qualcomm/location/izatprovider/IzatProvider;->mProviderContext:Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    invoke-static {v2}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->access$400(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mHandler:Landroid/os/Handler;

    .line 243
    iget-object v1, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x309

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 244
    return-void
.end method

.method static getFusedProvider(Landroid/content/Context;)Lcom/qualcomm/location/izatprovider/IzatProvider;
    .locals 13
    .param p0, "ctx"    # Landroid/content/Context;

    .line 217
    const-class v0, Lcom/qualcomm/location/izatprovider/IzatProvider;

    monitor-enter v0

    .line 218
    :try_start_0
    sget-object v1, Lcom/qualcomm/location/izatprovider/IzatProvider;->mProviderContext:Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/qualcomm/location/izatprovider/IzatProvider;->mProviderContext:Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    invoke-static {v1}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->access$200(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Lcom/qualcomm/location/izatprovider/IzatProvider;

    move-result-object v1

    if-nez v1, :cond_1

    .line 219
    :cond_0
    new-instance v1, Lcom/qualcomm/location/izatprovider/IzatProvider;

    sget v2, Lcom/qualcomm/location/izatprovider/IzatProvider;->IZAT_STREAM_FUSED:I

    const-string v3, "fused"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    .line 221
    invoke-static/range {v4 .. v12}, Lcom/android/location/provider/ProviderPropertiesUnbundled;->create(ZZZZZZZII)Lcom/android/location/provider/ProviderPropertiesUnbundled;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/qualcomm/location/izatprovider/IzatProvider;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/android/location/provider/ProviderPropertiesUnbundled;)V

    .line 223
    .local v1, "tmp":Lcom/qualcomm/location/izatprovider/IzatProvider;
    sget-object v2, Lcom/qualcomm/location/izatprovider/IzatProvider;->mProviderContext:Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    invoke-static {v2, v1}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->access$202(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;Lcom/qualcomm/location/izatprovider/IzatProvider;)Lcom/qualcomm/location/izatprovider/IzatProvider;

    .line 225
    .end local v1    # "tmp":Lcom/qualcomm/location/izatprovider/IzatProvider;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    sget-object v0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mProviderContext:Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    invoke-static {v0}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->access$200(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Lcom/qualcomm/location/izatprovider/IzatProvider;

    move-result-object v0

    return-object v0

    .line 225
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static getNetworkProvider(Landroid/content/Context;)Lcom/qualcomm/location/izatprovider/IzatProvider;
    .locals 13
    .param p0, "ctx"    # Landroid/content/Context;

    .line 204
    const-class v0, Lcom/qualcomm/location/izatprovider/IzatProvider;

    monitor-enter v0

    .line 205
    :try_start_0
    sget-object v1, Lcom/qualcomm/location/izatprovider/IzatProvider;->mProviderContext:Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/qualcomm/location/izatprovider/IzatProvider;->mProviderContext:Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    invoke-static {v1}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->access$100(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Lcom/qualcomm/location/izatprovider/IzatProvider;

    move-result-object v1

    if-nez v1, :cond_1

    .line 206
    :cond_0
    new-instance v1, Lcom/qualcomm/location/izatprovider/IzatProvider;

    sget v2, Lcom/qualcomm/location/izatprovider/IzatProvider;->IZAT_STREAM_NETWORK:I

    const-string v3, "network"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x2

    .line 208
    invoke-static/range {v4 .. v12}, Lcom/android/location/provider/ProviderPropertiesUnbundled;->create(ZZZZZZZII)Lcom/android/location/provider/ProviderPropertiesUnbundled;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/qualcomm/location/izatprovider/IzatProvider;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/android/location/provider/ProviderPropertiesUnbundled;)V

    .line 210
    .local v1, "tmp":Lcom/qualcomm/location/izatprovider/IzatProvider;
    sget-object v2, Lcom/qualcomm/location/izatprovider/IzatProvider;->mProviderContext:Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    invoke-static {v2, v1}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->access$102(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;Lcom/qualcomm/location/izatprovider/IzatProvider;)Lcom/qualcomm/location/izatprovider/IzatProvider;

    .line 212
    .end local v1    # "tmp":Lcom/qualcomm/location/izatprovider/IzatProvider;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    sget-object v0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mProviderContext:Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    invoke-static {v0}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->access$100(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Lcom/qualcomm/location/izatprovider/IzatProvider;

    move-result-object v0

    return-object v0

    .line 212
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleSetRequest(Lcom/qualcomm/location/izatprovider/IzatProvider$RequestParams;)V
    .locals 9
    .param p1, "wrapper"    # Lcom/qualcomm/location/izatprovider/IzatProvider$RequestParams;

    .line 352
    const-string v0, "handleSetRequest"

    invoke-direct {p0, v0}, Lcom/qualcomm/location/izatprovider/IzatProvider;->log(Ljava/lang/String;)V

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mActiveWorkSource:Landroid/os/WorkSource;

    iget-object v1, p1, Lcom/qualcomm/location/izatprovider/IzatProvider$RequestParams;->source:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;

    move-result-object v0

    .line 356
    .local v0, "changes":[Landroid/os/WorkSource;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mNavigating:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mHighPowerCapable:Z

    if-eqz v1, :cond_0

    .line 358
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/qualcomm/location/izatprovider/IzatProvider;->updateHighPowerLocationMonitoringOnClientUids(Landroid/os/WorkSource;Z)V

    .line 360
    aget-object v2, v0, v3

    invoke-direct {p0, v2, v1}, Lcom/qualcomm/location/izatprovider/IzatProvider;->updateHighPowerLocationMonitoringOnClientUids(Landroid/os/WorkSource;Z)V

    .line 363
    :cond_0
    iget-object v1, p1, Lcom/qualcomm/location/izatprovider/IzatProvider$RequestParams;->request:Lcom/android/location/provider/ProviderRequestUnbundled;

    invoke-virtual {v1}, Lcom/android/location/provider/ProviderRequestUnbundled;->getReportLocation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    iget v3, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mIzatProviderType:I

    const v4, 0x7fffffff

    iget-object v1, p1, Lcom/qualcomm/location/izatprovider/IzatProvider$RequestParams;->request:Lcom/android/location/provider/ProviderRequestUnbundled;

    .line 366
    invoke-virtual {v1}, Lcom/android/location/provider/ProviderRequestUnbundled;->getInterval()J

    move-result-wide v5

    const/4 v7, 0x0

    sget v8, Lcom/qualcomm/location/izatprovider/IzatProvider;->IZAT_HORIZONTAL_BLOCK:I

    .line 364
    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/qualcomm/location/izatprovider/IzatProvider;->nativeOnAddRequest(IIJFI)V

    goto :goto_0

    .line 370
    :cond_1
    iget v2, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mIzatProviderType:I

    const v3, 0x7fffffff

    iget-object v1, p1, Lcom/qualcomm/location/izatprovider/IzatProvider$RequestParams;->request:Lcom/android/location/provider/ProviderRequestUnbundled;

    .line 372
    invoke-virtual {v1}, Lcom/android/location/provider/ProviderRequestUnbundled;->getInterval()J

    move-result-wide v4

    const/4 v6, 0x0

    sget v7, Lcom/qualcomm/location/izatprovider/IzatProvider;->IZAT_HORIZONTAL_BLOCK:I

    .line 370
    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/qualcomm/location/izatprovider/IzatProvider;->nativeOnRemoveRequest(IIJFI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .end local v0    # "changes":[Landroid/os/WorkSource;
    :goto_0
    goto :goto_1

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->TAG:Ljava/lang/String;

    const-string v2, "Exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .line 412
    iget-boolean v0, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    return-void
.end method

.method static mapAccuracy(I)I
    .locals 1
    .param p0, "locationRequestAccuracy"    # I

    .line 399
    const/16 v0, 0x64

    if-eq p0, v0, :cond_1

    const/16 v0, 0x66

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xcb

    if-eq p0, v0, :cond_1

    .line 407
    sget v0, Lcom/qualcomm/location/izatprovider/IzatProvider;->IZAT_HORIZONTAL_NONE:I

    return v0

    .line 405
    :cond_0
    sget v0, Lcom/qualcomm/location/izatprovider/IzatProvider;->IZAT_HORIZONTAL_BLOCK:I

    return v0

    .line 402
    :cond_1
    sget v0, Lcom/qualcomm/location/izatprovider/IzatProvider;->IZAT_HORIZONTAL_FINE:I

    return v0
.end method

.method private native nativeOnAddRequest(IIJFI)V
.end method

.method private static native nativeOnClassLoad()V
.end method

.method private native nativeOnDisableProvider(I)V
.end method

.method private native nativeOnEnableProvider(I)V
.end method

.method private native nativeOnRemoveRequest(IIJFI)V
.end method

.method private static native nativeOnStaticLoad()V
.end method

.method private onLocationChanged(JJDDZDZFZFZFZFZFZFS)V
    .locals 16
    .param p1, "utcTime"    # J
    .param p3, "elapsedRealTimeNanos"    # J
    .param p5, "latitude"    # D
    .param p7, "longitude"    # D
    .param p9, "hasAltitude"    # Z
    .param p10, "altitude"    # D
    .param p12, "hasVerticalUnc"    # Z
    .param p13, "verticalUnc"    # F
    .param p14, "hasSpeed"    # Z
    .param p15, "speed"    # F
    .param p16, "hasSpeedUnc"    # Z
    .param p17, "speedUnc"    # F
    .param p18, "hasBearing"    # Z
    .param p19, "bearing"    # F
    .param p20, "hasBearingUnc"    # Z
    .param p21, "bearingUnc"    # F
    .param p22, "hasAccuracy"    # Z
    .param p23, "accuracy"    # F
    .param p24, "positionSource"    # S

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    .line 143
    const-string v0, ""

    .line 144
    .local v0, "emptyStr":Ljava/lang/String;
    move-object v12, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "emptyStr":Ljava/lang/String;
    .local v12, "emptyStr":Ljava/lang/String;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onLocationChanged - UTC Time: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "; Elapsed Real Time Nanos: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "; Latitude: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, "; Longitude: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, "; Accuracy: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    if-eqz p22, :cond_0

    invoke-static/range {p23 .. p23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    goto :goto_0

    :cond_0
    move-object v10, v12

    :goto_0
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "; Altitude: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    if-eqz p9, :cond_1

    invoke-static/range {p10 .. p11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_1

    :cond_1
    move-object v10, v12

    :goto_1
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "; Vertical Unc: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    if-eqz p12, :cond_2

    invoke-static/range {p13 .. p13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    goto :goto_2

    :cond_2
    move-object v10, v12

    :goto_2
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "; Speed: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    if-eqz p14, :cond_3

    invoke-static/range {p15 .. p15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    goto :goto_3

    :cond_3
    move-object v10, v12

    :goto_3
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "; Speed Unc "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    if-eqz p16, :cond_4

    invoke-static/range {p17 .. p17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    goto :goto_4

    :cond_4
    move-object v10, v12

    :goto_4
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "; Bearing: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    if-eqz p18, :cond_5

    invoke-static/range {p19 .. p19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    goto :goto_5

    :cond_5
    move-object v10, v12

    :goto_5
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "; Bearing Unc "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    if-eqz p20, :cond_6

    invoke-static/range {p21 .. p21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    move-object v10, v13

    goto :goto_6

    :cond_6
    move-object v10, v12

    :goto_6
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "; positionSource: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v10, v12

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v12    # "emptyStr":Ljava/lang/String;
    .local v10, "emptyStr":Ljava/lang/String;
    move-object v14, v10

    const-string v10, "; providerName: "

    .end local v10    # "emptyStr":Ljava/lang/String;
    .local v14, "emptyStr":Ljava/lang/String;
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v11, v14

    move-object/from16 v10, p0

    iget-object v9, v10, Lcom/qualcomm/location/izatprovider/IzatProvider;->NAME:Ljava/lang/String;

    .end local v14    # "emptyStr":Ljava/lang/String;
    .local v11, "emptyStr":Ljava/lang/String;
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-direct {v10, v0}, Lcom/qualcomm/location/izatprovider/IzatProvider;->log(Ljava/lang/String;)V

    .line 157
    new-instance v0, Landroid/location/Location;

    iget-object v9, v10, Lcom/qualcomm/location/izatprovider/IzatProvider;->NAME:Ljava/lang/String;

    invoke-direct {v0, v9}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "location":Landroid/location/Location;
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 159
    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 160
    invoke-virtual {v0, v5, v6}, Landroid/location/Location;->setLatitude(D)V

    .line 161
    invoke-virtual {v0, v7, v8}, Landroid/location/Location;->setLongitude(D)V

    .line 162
    if-eqz p9, :cond_7

    move-wide/from16 v1, p10

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    goto :goto_7

    .line 163
    :cond_7
    move-wide/from16 v1, p10

    :goto_7
    if-eqz p14, :cond_8

    move/from16 v9, p15

    invoke-virtual {v0, v9}, Landroid/location/Location;->setSpeed(F)V

    goto :goto_8

    .line 164
    :cond_8
    move/from16 v9, p15

    :goto_8
    if-eqz p18, :cond_9

    move/from16 v1, p19

    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    goto :goto_9

    .line 165
    :cond_9
    move/from16 v1, p19

    :goto_9
    if-eqz p22, :cond_a

    move/from16 v2, p23

    invoke-virtual {v0, v2}, Landroid/location/Location;->setAccuracy(F)V

    goto :goto_a

    .line 166
    :cond_a
    move/from16 v2, p23

    :goto_a
    if-eqz p12, :cond_b

    move/from16 v1, p13

    invoke-virtual {v0, v1}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    goto :goto_b

    .line 167
    :cond_b
    move/from16 v1, p13

    :goto_b
    if-eqz p16, :cond_c

    move/from16 v1, p17

    invoke-virtual {v0, v1}, Landroid/location/Location;->setSpeedAccuracyMetersPerSecond(F)V

    goto :goto_c

    .line 168
    :cond_c
    move/from16 v1, p17

    :goto_c
    if-eqz p20, :cond_d

    move/from16 v1, p21

    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearingAccuracyDegrees(F)V

    goto :goto_d

    .line 169
    :cond_d
    move/from16 v1, p21

    :goto_d
    invoke-virtual {v0}, Landroid/location/Location;->makeComplete()V

    .line 171
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 172
    .local v1, "extras":Landroid/os/Bundle;
    packed-switch p24, :pswitch_data_0

    goto :goto_e

    .line 177
    :pswitch_0
    const-string v2, "networkLocationType"

    const-string v3, "wifi"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 174
    :pswitch_1
    const-string v2, "networkLocationType"

    const-string v3, "cell"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    nop

    .line 180
    :goto_e
    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 182
    iget v2, v10, Lcom/qualcomm/location/izatprovider/IzatProvider;->mIzatProviderType:I

    sget v3, Lcom/qualcomm/location/izatprovider/IzatProvider;->IZAT_STREAM_NETWORK:I

    if-ne v2, v3, :cond_e

    .line 184
    const-string v2, "noGPSLocation"

    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V

    goto :goto_f

    .line 189
    :cond_e
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v2}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 193
    :goto_f
    invoke-virtual {v0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.qualcomm.location.nlp:ready"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 195
    iget-object v2, v10, Lcom/qualcomm/location/izatprovider/IzatProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1bc

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 196
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onStatusChanged(I)V
    .locals 3
    .param p1, "status"    # I

    .line 200
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x22b

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 201
    return-void
.end method

.method private updateHighPowerLocationMonitoringOnClientUids(Landroid/os/WorkSource;Z)V
    .locals 9
    .param p1, "newWork"    # Landroid/os/WorkSource;
    .param p2, "start"    # Z

    .line 383
    if-eqz p1, :cond_2

    .line 384
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 385
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    .line 386
    .local v2, "uid":I
    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v3

    .line 387
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x2

    if-eqz p2, :cond_0

    .line 388
    iget-object v5, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mAppOpsMgr:Landroid/app/AppOpsManager;

    invoke-virtual {v5, v4, v2, v3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    goto :goto_1

    .line 390
    :cond_0
    iget-object v5, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mAppOpsMgr:Landroid/app/AppOpsManager;

    invoke-virtual {v5, v4, v2, v3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 392
    :goto_1
    const-string v5, "%sOp - uid: %d; packageName: %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 393
    if-eqz p2, :cond_1

    const-string v7, "start"

    goto :goto_2

    :cond_1
    const-string v7, "finish"

    :goto_2
    aput-object v7, v6, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    aput-object v3, v6, v4

    .line 392
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/location/izatprovider/IzatProvider;->log(Ljava/lang/String;)V

    .line 384
    .end local v2    # "uid":I
    .end local v3    # "packageName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 396
    .end local v1    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method getWorkSource()Landroid/os/WorkSource;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mActiveWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 248
    iget v0, p1, Landroid/os/Message;->what:I

    .line 249
    .local v0, "msgID":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage what - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/location/izatprovider/IzatProvider;->log(Ljava/lang/String;)V

    .line 251
    const/16 v1, 0x6f

    const/4 v2, 0x1

    if-eq v0, v1, :cond_9

    const/16 v1, 0xde

    if-eq v0, v1, :cond_7

    const/16 v1, 0x14d

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1bc

    if-eq v0, v1, :cond_5

    const/16 v1, 0x22b

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x309

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 254
    :cond_0
    sget-object v1, Lcom/qualcomm/location/izatprovider/IzatProvider;->mProviderContext:Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    invoke-static {v1}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->access$500(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Landroid/content/Context;

    move-result-object v1

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mAppOpsMgr:Landroid/app/AppOpsManager;

    .line 255
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mActiveWorkSource:Landroid/os/WorkSource;

    .line 256
    iput-boolean v3, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mNavigating:Z

    .line 260
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_b

    .line 261
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    .line 262
    .local v1, "ipc":Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;
    new-instance v3, Lcom/qualcomm/location/izatprovider/NpProxy;

    invoke-static {v1}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->access$500(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v1}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->access$400(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lcom/qualcomm/location/izatprovider/NpProxy;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)V

    invoke-static {v1, v3}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->access$002(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;Lcom/qualcomm/location/izatprovider/NpProxy;)Lcom/qualcomm/location/izatprovider/NpProxy;

    .line 263
    new-instance v3, Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v1}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->access$500(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v1}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->access$400(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Landroid/os/Looper;

    move-result-object v5

    invoke-static {v1}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->access$000(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Lcom/qualcomm/location/izatprovider/NpProxy;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/qualcomm/location/osagent/OsAgent;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/qualcomm/location/izatprovider/NpProxy;)V

    invoke-static {v1, v3}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->access$602(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;Lcom/qualcomm/location/osagent/OsAgent;)Lcom/qualcomm/location/osagent/OsAgent;

    .line 265
    invoke-static {v1}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->access$500(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    .line 266
    invoke-static {v1}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->access$500(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/qualcomm/location/LBSSystemMonitorService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 265
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 268
    invoke-static {v1}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->access$500(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    .line 269
    invoke-static {v1}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->access$500(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/qualcomm/location/LocationService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 268
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 271
    invoke-static {v1}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->access$500(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    .line 272
    invoke-static {v1}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->access$500(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/qualcomm/location/izat/IzatService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "com.qualcomm.location.izat.IzatService"

    .line 273
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 271
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 275
    invoke-static {v1}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->access$500(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.qualcomm.location.XT"

    const-string v6, "com.qualcomm.location.XT.XTSrv"

    .line 277
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    .line 279
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 275
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 289
    invoke-static {}, Lcom/qualcomm/location/izatprovider/IzatProvider;->nativeOnStaticLoad()V

    .line 290
    .end local v1    # "ipc":Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;
    goto/16 :goto_1

    .line 322
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 323
    .local v1, "status":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_STATUS_CHANGED: Status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/location/izatprovider/IzatProvider;->log(Ljava/lang/String;)V

    .line 324
    iget-boolean v4, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mNavigating:Z

    .line 325
    .local v4, "wasNavigating":Z
    const/4 v5, 0x4

    if-ne v1, v5, :cond_2

    .line 326
    iput-boolean v2, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mNavigating:Z

    goto :goto_0

    .line 327
    :cond_2
    const/4 v5, 0x5

    if-eq v1, v5, :cond_3

    const/4 v5, 0x7

    if-ne v1, v5, :cond_4

    .line 329
    :cond_3
    iput-boolean v3, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mNavigating:Z

    .line 332
    :cond_4
    :goto_0
    iget-boolean v3, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mNavigating:Z

    if-eq v4, v3, :cond_b

    .line 334
    iget-object v3, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mActiveWorkSource:Landroid/os/WorkSource;

    iget-boolean v5, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mNavigating:Z

    invoke-direct {p0, v3, v5}, Lcom/qualcomm/location/izatprovider/IzatProvider;->updateHighPowerLocationMonitoringOnClientUids(Landroid/os/WorkSource;Z)V

    .line 336
    sget-object v3, Lcom/qualcomm/location/izatprovider/IzatProvider;->mProviderContext:Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    invoke-static {v3}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->access$500(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Landroid/content/Context;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 315
    .end local v1    # "status":I
    .end local v4    # "wasNavigating":Z
    :cond_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/location/Location;

    .line 316
    .local v1, "location":Landroid/location/Location;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_LOCATION_CHANGED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/location/izatprovider/IzatProvider;->log(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0, v1}, Lcom/qualcomm/location/izatprovider/IzatProvider;->reportLocation(Landroid/location/Location;)V

    .line 318
    goto :goto_1

    .line 309
    .end local v1    # "location":Landroid/location/Location;
    :cond_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/location/izatprovider/IzatProvider$RequestParams;

    .line 310
    .local v1, "params":Lcom/qualcomm/location/izatprovider/IzatProvider$RequestParams;
    invoke-direct {p0, v1}, Lcom/qualcomm/location/izatprovider/IzatProvider;->handleSetRequest(Lcom/qualcomm/location/izatprovider/IzatProvider$RequestParams;)V

    .line 311
    goto :goto_1

    .line 302
    .end local v1    # "params":Lcom/qualcomm/location/izatprovider/IzatProvider$RequestParams;
    :cond_7
    iget v1, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mIzatProviderType:I

    sget v3, Lcom/qualcomm/location/izatprovider/IzatProvider;->IZAT_STREAM_NETWORK:I

    if-ne v1, v3, :cond_8

    .line 303
    sget-object v1, Lcom/qualcomm/location/izatprovider/IzatProvider;->mProviderContext:Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    invoke-static {v1}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->access$000(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Lcom/qualcomm/location/izatprovider/NpProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/location/izatprovider/NpProxy;->disable()V

    .line 304
    :cond_8
    iget v1, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mIzatProviderType:I

    invoke-direct {p0, v1}, Lcom/qualcomm/location/izatprovider/IzatProvider;->nativeOnDisableProvider(I)V

    .line 305
    goto :goto_1

    .line 295
    :cond_9
    iget v1, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mIzatProviderType:I

    sget v3, Lcom/qualcomm/location/izatprovider/IzatProvider;->IZAT_STREAM_NETWORK:I

    if-ne v1, v3, :cond_a

    .line 296
    sget-object v1, Lcom/qualcomm/location/izatprovider/IzatProvider;->mProviderContext:Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    invoke-static {v1}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->access$000(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Lcom/qualcomm/location/izatprovider/NpProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/location/izatprovider/NpProxy;->enable()V

    .line 297
    :cond_a
    iget v1, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mIzatProviderType:I

    invoke-direct {p0, v1}, Lcom/qualcomm/location/izatprovider/IzatProvider;->nativeOnEnableProvider(I)V

    .line 298
    nop

    .line 344
    :cond_b
    :goto_1
    return v2
.end method

.method public onDisable()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xde

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    return-void
.end method

.method public onEnable()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 105
    return-void
.end method

.method public onGetStatus(Landroid/os/Bundle;)I
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 120
    iget v0, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mIzatProviderType:I

    sget v1, Lcom/qualcomm/location/izatprovider/IzatProvider;->IZAT_STREAM_NETWORK:I

    if-ne v0, v1, :cond_0

    .line 121
    sget-object v0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mProviderContext:Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    invoke-static {v0}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->access$000(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Lcom/qualcomm/location/izatprovider/NpProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/location/izatprovider/NpProxy;->getStatus(Landroid/os/Bundle;)I

    move-result v0

    return v0

    .line 122
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public onGetStatusUpdateTime()J
    .locals 2

    .line 127
    iget v0, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mIzatProviderType:I

    sget v1, Lcom/qualcomm/location/izatprovider/IzatProvider;->IZAT_STREAM_NETWORK:I

    if-ne v0, v1, :cond_0

    .line 128
    sget-object v0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mProviderContext:Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    invoke-static {v0}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->access$000(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Lcom/qualcomm/location/izatprovider/NpProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/location/izatprovider/NpProxy;->getStatusUpdateTime()J

    move-result-wide v0

    return-wide v0

    .line 129
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onSetRequest(Lcom/android/location/provider/ProviderRequestUnbundled;Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "request"    # Lcom/android/location/provider/ProviderRequestUnbundled;
    .param p2, "source"    # Landroid/os/WorkSource;

    .line 114
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/IzatProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qualcomm/location/izatprovider/IzatProvider$RequestParams;

    invoke-direct {v1, p1, p2}, Lcom/qualcomm/location/izatprovider/IzatProvider$RequestParams;-><init>(Lcom/android/location/provider/ProviderRequestUnbundled;Landroid/os/WorkSource;)V

    const/16 v2, 0x14d

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 116
    return-void
.end method
