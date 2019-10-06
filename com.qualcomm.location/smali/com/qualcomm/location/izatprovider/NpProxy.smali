.class public Lcom/qualcomm/location/izatprovider/NpProxy;
.super Ljava/lang/Object;
.source "NpProxy.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final DEBUG:Z

.field private static final MSG_INIT:I = 0x1

.field private static final MSG_LOCATION_CHANGED:I = 0x4

.field private static final MSG_REGIONAL_NP_UPDATE:I = 0x5

.field private static final MSG_SET_REQUEST:I = 0x3

.field private static final NETWORK_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.v3.NetworkLocationProvider"

.field private static final TAG:Ljava/lang/String; = "NpProxy"

.field private static mLocationScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final mNpImplIds:[[I

.field private static mOsnlpArrayResId:I

.field private static mOsnlpResId:I

.field private static mRegionalOsnlpArrayResId:I

.field private static mRegionalOsnlpResId:I


# instance fields
.field private mAccuracyThreshold:F

.field private mActiveAccuracyThreshold:F

.field private mActiveNpHandle:Lcom/android/server/location/LocationProviderInterface;

.field private mContext:Landroid/content/Context;

.field private mDeviceInRegion:Z

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mIzatProviderContext:Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mOSNpHandle:Lcom/android/server/location/LocationProviderInterface;

.field private mRegionOSNpHandle:Lcom/android/server/location/LocationProviderInterface;

.field private mRegionalAccuracyThreshold:F

.field private mRequests:Lcom/android/internal/location/ProviderRequest;

.field private mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    invoke-static {}, Lcom/qualcomm/location/izatprovider/NpProxy;->nativeOnClassLoad()V

    .line 405
    const-string v0, "NpProxy"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/location/izatprovider/NpProxy;->DEBUG:Z

    .line 408
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/qualcomm/location/izatprovider/NpProxy;->mLocationScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 433
    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    aput-object v3, v0, v2

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/qualcomm/location/izatprovider/NpProxy;->mNpImplIds:[[I

    return-void

    :array_0
    .array-data 4
        0x7f030000
        0x7f040000
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x7f030001
        0x7f040001
        0x3e8
    .end array-data

    :array_2
    .array-data 4
        0x7f030002
        0x7f040002
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x7f030004
        0x7f040004
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x7f030003
        0x7f040003
        0x0
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "izatProviderContext"    # Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mWorkSource:Landroid/os/WorkSource;

    .line 447
    new-instance v0, Lcom/qualcomm/location/izatprovider/NpProxy$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/izatprovider/NpProxy$1;-><init>(Lcom/qualcomm/location/izatprovider/NpProxy;)V

    iput-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mLocationListener:Landroid/location/LocationListener;

    .line 248
    iput-object p1, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mContext:Landroid/content/Context;

    .line 249
    iput-object p3, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mIzatProviderContext:Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    .line 250
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mHandler:Landroid/os/Handler;

    .line 251
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mDeviceInRegion:Z

    .line 253
    iput-boolean v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mEnabled:Z

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mRequests:Lcom/android/internal/location/ProviderRequest;

    .line 255
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 45
    sget-object v0, Lcom/qualcomm/location/izatprovider/NpProxy;->mLocationScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qualcomm/location/izatprovider/NpProxy;Landroid/location/Location;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izatprovider/NpProxy;
    .param p1, "x1"    # Landroid/location/Location;

    .line 45
    invoke-direct {p0, p1}, Lcom/qualcomm/location/izatprovider/NpProxy;->clearMarkerIfForScreening(Landroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/qualcomm/location/izatprovider/NpProxy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izatprovider/NpProxy;

    .line 45
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkPackageExists(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 128
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 130
    .local v2, "exists":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 132
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 133
    invoke-virtual {v3, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 135
    .local v3, "info":Ljava/lang/String;
    if-nez v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    nop

    :cond_2
    :goto_1
    move v2, v0

    .line 138
    .end local v3    # "info":Ljava/lang/String;
    goto :goto_2

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 141
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    :goto_2
    return v2
.end method

.method private clearMarkerIfForScreening(Landroid/location/Location;)Z
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .line 282
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 283
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "com.qualcomm.location.nlp:screen"

    .line 284
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 286
    .local v1, "marked":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 287
    const-string v2, "com.qualcomm.location.nlp:screen"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 290
    :cond_1
    return v1
.end method

.method private getNpImplPackage(ILjava/lang/String;)I
    .locals 4
    .param p1, "startIdx"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 92
    move v0, p1

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/qualcomm/location/izatprovider/NpProxy;->mNpImplIds:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/qualcomm/location/izatprovider/NpProxy;->mNpImplIds:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    return v0

    .line 92
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "i":I
    :cond_1
    sget-object v0, Lcom/qualcomm/location/izatprovider/NpProxy;->mNpImplIds:[[I

    array-length v0, v0

    return v0
.end method

.method private initServiceBinding()V
    .locals 8

    .line 145
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mOSNpHandle:Lcom/android/server/location/LocationProviderInterface;

    if-nez v0, :cond_0

    .line 146
    iget-object v1, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mContext:Landroid/content/Context;

    const-string v2, "network"

    const-string v3, "com.android.location.service.v3.NetworkLocationProvider"

    const/high16 v4, 0x7f020000

    sget v5, Lcom/qualcomm/location/izatprovider/NpProxy;->mOsnlpResId:I

    sget v6, Lcom/qualcomm/location/izatprovider/NpProxy;->mOsnlpArrayResId:I

    iget-object v7, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mHandler:Landroid/os/Handler;

    .line 147
    invoke-static/range {v1 .. v7}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mOSNpHandle:Lcom/android/server/location/LocationProviderInterface;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mRegionOSNpHandle:Lcom/android/server/location/LocationProviderInterface;

    if-nez v0, :cond_1

    .line 156
    iget-object v1, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mContext:Landroid/content/Context;

    const-string v2, "network"

    const-string v3, "com.android.location.service.v3.NetworkLocationProvider"

    const/high16 v4, 0x7f020000

    sget v5, Lcom/qualcomm/location/izatprovider/NpProxy;->mRegionalOsnlpResId:I

    sget v6, Lcom/qualcomm/location/izatprovider/NpProxy;->mRegionalOsnlpArrayResId:I

    iget-object v7, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mHandler:Landroid/os/Handler;

    .line 157
    invoke-static/range {v1 .. v7}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mRegionOSNpHandle:Lcom/android/server/location/LocationProviderInterface;

    .line 165
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/location/izatprovider/NpProxy;->updateServiceBinding()V

    .line 166
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 294
    sget-boolean v0, Lcom/qualcomm/location/izatprovider/NpProxy;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NpProxy"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    return-void
.end method

.method private static native nativeOnClassLoad()V
.end method

.method private native nativeOnInstanceDeinit()V
.end method

.method private native nativeOnInstanceInit()V
.end method

.method private native nativeOnLocationChanged(ZJZJZDZDZFZFZDZFZFZI)V
.end method

.method private onSetRequest(JFI)V
    .locals 4
    .param p1, "interval"    # J
    .param p3, "smallestDisplacement"    # F
    .param p4, "numUpdates"    # I

    .line 265
    const-string v0, "network"

    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    .line 266
    move v2, v1

    goto :goto_0

    .line 265
    :cond_0
    const/4 v2, 0x0

    .line 266
    :goto_0
    invoke-static {v0, p1, p2, p3, v2}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 269
    .local v0, "locationRequest":Landroid/location/LocationRequest;
    new-instance v2, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v2}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    .line 270
    .local v2, "providerRequest":Lcom/android/internal/location/ProviderRequest;
    iput-wide p1, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    .line 271
    iput-boolean v1, v2, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    .line 272
    iget-object v1, v2, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v1, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 275
    return-void
.end method

.method private onStopRequest()V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v1}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 279
    return-void
.end method

.method static screenLocations(Z)V
    .locals 2
    .param p0, "screenOn"    # Z

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Screen location status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/izatprovider/NpProxy;->log(Ljava/lang/String;)V

    .line 244
    sget-object v0, Lcom/qualcomm/location/izatprovider/NpProxy;->mLocationScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 245
    return-void
.end method

.method private setNpImplePackageNames()V
    .locals 8

    .line 102
    const-string v0, "ro.location.osnlp.package"

    const-string v1, "com.google.android.gms"

    .line 103
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "defaultServicePackageName":Ljava/lang/String;
    const-string v1, "ro.location.osnlp.region.package"

    const-string v2, ""

    .line 105
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "regionServicePackageName":Ljava/lang/String;
    const/high16 v2, 0x7f030000

    sput v2, Lcom/qualcomm/location/izatprovider/NpProxy;->mOsnlpResId:I

    .line 108
    const/high16 v2, 0x7f040000

    sput v2, Lcom/qualcomm/location/izatprovider/NpProxy;->mOsnlpArrayResId:I

    .line 109
    const v2, 0x7f030001

    sput v2, Lcom/qualcomm/location/izatprovider/NpProxy;->mRegionalOsnlpResId:I

    .line 110
    const v2, 0x7f040001

    sput v2, Lcom/qualcomm/location/izatprovider/NpProxy;->mRegionalOsnlpArrayResId:I

    .line 112
    sget-object v2, Lcom/qualcomm/location/izatprovider/NpProxy;->mNpImplIds:[[I

    array-length v2, v2

    .line 113
    .local v2, "implIdx":I
    const/4 v3, 0x0

    invoke-direct {p0, v3, v0}, Lcom/qualcomm/location/izatprovider/NpProxy;->getNpImplPackage(ILjava/lang/String;)I

    move-result v4

    move v2, v4

    sget-object v5, Lcom/qualcomm/location/izatprovider/NpProxy;->mNpImplIds:[[I

    array-length v5, v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v4, v5, :cond_0

    .line 114
    sget-object v4, Lcom/qualcomm/location/izatprovider/NpProxy;->mNpImplIds:[[I

    aget-object v4, v4, v2

    aget v4, v4, v3

    sput v4, Lcom/qualcomm/location/izatprovider/NpProxy;->mOsnlpResId:I

    .line 115
    sget-object v4, Lcom/qualcomm/location/izatprovider/NpProxy;->mNpImplIds:[[I

    aget-object v4, v4, v2

    aget v4, v4, v7

    sput v4, Lcom/qualcomm/location/izatprovider/NpProxy;->mOsnlpArrayResId:I

    .line 116
    sget-object v4, Lcom/qualcomm/location/izatprovider/NpProxy;->mNpImplIds:[[I

    aget-object v4, v4, v2

    aget v4, v4, v6

    int-to-float v4, v4

    iput v4, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mAccuracyThreshold:F

    .line 119
    :cond_0
    invoke-direct {p0, v7, v1}, Lcom/qualcomm/location/izatprovider/NpProxy;->getNpImplPackage(ILjava/lang/String;)I

    move-result v4

    move v2, v4

    sget-object v5, Lcom/qualcomm/location/izatprovider/NpProxy;->mNpImplIds:[[I

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 120
    sget-object v4, Lcom/qualcomm/location/izatprovider/NpProxy;->mNpImplIds:[[I

    aget-object v4, v4, v2

    aget v3, v4, v3

    sput v3, Lcom/qualcomm/location/izatprovider/NpProxy;->mRegionalOsnlpResId:I

    .line 121
    sget-object v3, Lcom/qualcomm/location/izatprovider/NpProxy;->mNpImplIds:[[I

    aget-object v3, v3, v2

    aget v3, v3, v7

    sput v3, Lcom/qualcomm/location/izatprovider/NpProxy;->mRegionalOsnlpArrayResId:I

    .line 122
    sget-object v3, Lcom/qualcomm/location/izatprovider/NpProxy;->mNpImplIds:[[I

    aget-object v3, v3, v2

    aget v3, v3, v6

    int-to-float v3, v3

    iput v3, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mRegionalAccuracyThreshold:F

    .line 124
    :cond_1
    return-void
.end method

.method private setRequestTry()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mRequests:Lcom/android/internal/location/ProviderRequest;

    if-eqz v0, :cond_3

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->clear()V

    .line 214
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mRequests:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mIzatProviderContext:Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    iget-object v1, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->getNetworkProviderInner(Landroid/content/Context;)Lcom/qualcomm/location/izatprovider/IzatProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mIzatProviderContext:Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    iget-object v1, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mContext:Landroid/content/Context;

    .line 217
    invoke-virtual {v0, v1}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->getNetworkProviderInner(Landroid/content/Context;)Lcom/qualcomm/location/izatprovider/IzatProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/location/izatprovider/IzatProvider;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v0

    .line 218
    .local v0, "ws":Landroid/os/WorkSource;
    if-eqz v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v0}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    .line 223
    .end local v0    # "ws":Landroid/os/WorkSource;
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mIzatProviderContext:Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    iget-object v1, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->getFusedProviderInner(Landroid/content/Context;)Lcom/qualcomm/location/izatprovider/IzatProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mIzatProviderContext:Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    iget-object v1, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mContext:Landroid/content/Context;

    .line 225
    invoke-virtual {v0, v1}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->getFusedProviderInner(Landroid/content/Context;)Lcom/qualcomm/location/izatprovider/IzatProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/location/izatprovider/IzatProvider;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v0

    .line 226
    .restart local v0    # "ws":Landroid/os/WorkSource;
    if-eqz v0, :cond_1

    .line 227
    iget-object v1, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v0}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    .line 231
    .end local v0    # "ws":Landroid/os/WorkSource;
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mActiveNpHandle:Lcom/android/server/location/LocationProviderInterface;

    iget-object v1, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mRequests:Lcom/android/internal/location/ProviderRequest;

    iget-object v2, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1, v2}, Lcom/android/server/location/LocationProviderInterface;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 232
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mRequests:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-nez v0, :cond_2

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mRequests:Lcom/android/internal/location/ProviderRequest;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :cond_2
    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v1, "NpProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :cond_3
    :goto_0
    return-void
.end method

.method private updateServiceBinding()V
    .locals 7

    .line 169
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mActiveNpHandle:Lcom/android/server/location/LocationProviderInterface;

    .line 170
    .local v0, "curHandle":Lcom/android/server/location/LocationProviderInterface;
    iget-boolean v1, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mDeviceInRegion:Z

    .line 171
    .local v1, "useRegional":Z
    iget-object v2, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/qualcomm/location/izatprovider/NpProxy;->mOsnlpResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/location/izatprovider/NpProxy;->checkPackageExists(Ljava/lang/String;)Z

    move-result v2

    .line 172
    .local v2, "hasDefaultNp":Z
    iget-object v3, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/qualcomm/location/izatprovider/NpProxy;->mRegionalOsnlpResId:I

    .line 173
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-direct {p0, v3}, Lcom/qualcomm/location/izatprovider/NpProxy;->checkPackageExists(Ljava/lang/String;)Z

    move-result v3

    .line 175
    .local v3, "hasRegionNp":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasRegionNp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "; hasDefaultNp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/izatprovider/NpProxy;->log(Ljava/lang/String;)V

    .line 182
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 185
    .local v4, "hasAndAllowDefaultNp":Z
    :goto_0
    if-eqz v4, :cond_1

    .line 186
    iget-object v5, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mOSNpHandle:Lcom/android/server/location/LocationProviderInterface;

    iput-object v5, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mActiveNpHandle:Lcom/android/server/location/LocationProviderInterface;

    .line 187
    iget v5, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mAccuracyThreshold:F

    iput v5, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mActiveAccuracyThreshold:F

    .line 188
    const-string v5, "OS NLP is selected to run"

    invoke-static {v5}, Lcom/qualcomm/location/izatprovider/NpProxy;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 189
    :cond_1
    if-eqz v3, :cond_2

    .line 190
    iget-object v5, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mRegionOSNpHandle:Lcom/android/server/location/LocationProviderInterface;

    iput-object v5, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mActiveNpHandle:Lcom/android/server/location/LocationProviderInterface;

    .line 191
    iget v5, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mRegionalAccuracyThreshold:F

    iput v5, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mActiveAccuracyThreshold:F

    .line 192
    const-string v5, "Regional NLP is selected to run"

    invoke-static {v5}, Lcom/qualcomm/location/izatprovider/NpProxy;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 195
    :cond_2
    const-string v5, "NpProxy"

    const-string v6, "Device has no NLP service to use"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_1
    iget-object v5, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mActiveNpHandle:Lcom/android/server/location/LocationProviderInterface;

    if-eq v0, v5, :cond_4

    .line 200
    if-eqz v0, :cond_3

    .line 201
    :try_start_0
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->disable()V

    goto :goto_2

    .line 204
    :catch_0
    move-exception v5

    goto :goto_3

    .line 203
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mActiveNpHandle:Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v5}, Lcom/android/server/location/LocationProviderInterface;->enable()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto :goto_4

    .line 204
    :goto_3
    nop

    .line 205
    .local v5, "npe":Ljava/lang/NullPointerException;
    const-string v6, "NpProxy"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    .end local v5    # "npe":Ljava/lang/NullPointerException;
    :cond_4
    :goto_4
    return-void
.end method


# virtual methods
.method destroy()V
    .locals 2

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mRequests:Lcom/android/internal/location/ProviderRequest;

    .line 259
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 260
    invoke-direct {p0}, Lcom/qualcomm/location/izatprovider/NpProxy;->nativeOnInstanceDeinit()V

    .line 261
    return-void
.end method

.method disable()V
    .locals 2

    .line 63
    iget-boolean v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mActiveNpHandle:Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->disable()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mEnabled:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v1, "NpProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    return-void
.end method

.method enable()V
    .locals 2

    .line 52
    iget-boolean v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mEnabled:Z

    if-nez v0, :cond_0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mActiveNpHandle:Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->enable()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mEnabled:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v1, "NpProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    return-void
.end method

.method getStatus(Landroid/os/Bundle;)I
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mActiveNpHandle:Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v0, p1}, Lcom/android/server/location/LocationProviderInterface;->getStatus(Landroid/os/Bundle;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v1, "NpProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    const/4 v0, 0x1

    return v0
.end method

.method getStatusUpdateTime()J
    .locals 2

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mActiveNpHandle:Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getStatusUpdateTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v1, "NpProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 37
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v15, p0

    .line 299
    move-object/from16 v14, p1

    iget v12, v14, Landroid/os/Message;->what:I

    .line 300
    .local v12, "msgID":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage what - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/izatprovider/NpProxy;->log(Ljava/lang/String;)V

    .line 302
    const/4 v0, 0x0

    const/4 v13, 0x1

    if-eq v12, v13, :cond_7

    packed-switch v12, :pswitch_data_0

    .line 377
    const-string v0, "NpProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled Message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v14, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .end local v12    # "msgID":I
    .local v27, "msgID":I
    :cond_0
    :goto_0
    move/from16 v27, v12

    move v4, v13

    move-object v1, v14

    move-object v2, v15

    goto/16 :goto_7

    .line 370
    .end local v27    # "msgID":I
    .restart local v12    # "msgID":I
    :pswitch_0
    iget v1, v14, Landroid/os/Message;->arg1:I

    if-ne v1, v13, :cond_1

    move v0, v13

    nop

    .line 371
    .local v0, "deviceInRegion":Z
    :cond_1
    iget-boolean v1, v15, Lcom/qualcomm/location/izatprovider/NpProxy;->mDeviceInRegion:Z

    if-eq v1, v0, :cond_0

    .line 372
    iput-boolean v0, v15, Lcom/qualcomm/location/izatprovider/NpProxy;->mDeviceInRegion:Z

    .line 373
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/location/izatprovider/NpProxy;->updateServiceBinding()V

    goto :goto_0

    .line 334
    .end local v0    # "deviceInRegion":Z
    :pswitch_1
    const/4 v1, -0x1

    .line 335
    .local v1, "source":I
    iget-object v2, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Landroid/location/Location;

    .line 337
    .local v11, "location":Landroid/location/Location;
    if-eqz v11, :cond_6

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/location/izatprovider/NpProxy;->log(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v11}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 342
    .local v9, "extras":Landroid/os/Bundle;
    if-eqz v9, :cond_3

    .line 343
    const-string v2, "networkLocationType"

    const-string v3, ""

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, "strSource":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 345
    const-string v3, "cell"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 346
    const/4 v1, 0x0

    goto :goto_1

    .line 347
    :cond_2
    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 348
    const/4 v1, 0x1

    .line 353
    .end local v1    # "source":I
    .end local v2    # "strSource":Ljava/lang/String;
    .local v10, "source":I
    :cond_3
    :goto_1
    move v10, v1

    const/4 v2, 0x1

    invoke-virtual {v11}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    const/4 v5, 0x1

    .line 354
    invoke-virtual {v11}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    const/4 v8, 0x1

    .line 355
    invoke-virtual {v11}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    const/16 v18, 0x1

    .line 356
    invoke-virtual {v11}, Landroid/location/Location;->getLongitude()D

    move-result-wide v19

    .line 357
    invoke-virtual {v11}, Landroid/location/Location;->hasAccuracy()Z

    move-result v21

    .line 358
    invoke-virtual {v11}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iget v13, v15, Lcom/qualcomm/location/izatprovider/NpProxy;->mActiveAccuracyThreshold:F

    cmpg-float v1, v1, v13

    if-gez v1, :cond_4

    .line 359
    iget v1, v15, Lcom/qualcomm/location/izatprovider/NpProxy;->mActiveAccuracyThreshold:F

    .line 360
    :goto_2
    move/from16 v22, v1

    goto :goto_3

    .line 359
    :cond_4
    invoke-virtual {v11}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    goto :goto_2

    .line 360
    :goto_3
    invoke-virtual {v11}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v23

    .line 361
    invoke-virtual {v11}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v24

    .line 362
    invoke-virtual {v11}, Landroid/location/Location;->hasAltitude()Z

    move-result v25

    invoke-virtual {v11}, Landroid/location/Location;->getAltitude()D

    move-result-wide v28

    .line 363
    invoke-virtual {v11}, Landroid/location/Location;->hasBearing()Z

    move-result v26

    invoke-virtual {v11}, Landroid/location/Location;->getBearing()F

    move-result v30

    .line 364
    invoke-virtual {v11}, Landroid/location/Location;->hasSpeed()Z

    move-result v31

    invoke-virtual {v11}, Landroid/location/Location;->getSpeed()F

    move-result v32

    const/4 v1, -0x1

    if-eq v10, v1, :cond_5

    .line 353
    const/4 v0, 0x1

    goto :goto_4

    .line 364
    :cond_5
    nop

    .line 353
    :goto_4
    move-object v1, v15

    move-object/from16 v33, v9

    move/from16 v34, v10

    move-wide/from16 v9, v16

    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v10    # "source":I
    .local v33, "extras":Landroid/os/Bundle;
    .local v34, "source":I
    move-object/from16 v35, v11

    move/from16 v11, v18

    .end local v11    # "location":Landroid/location/Location;
    .local v35, "location":Landroid/location/Location;
    move/from16 v27, v12

    move-wide/from16 v12, v19

    .end local v12    # "msgID":I
    .restart local v27    # "msgID":I
    move/from16 v14, v21

    move/from16 v15, v22

    move/from16 v16, v23

    move/from16 v17, v24

    move/from16 v18, v25

    move-wide/from16 v19, v28

    move/from16 v21, v26

    move/from16 v22, v30

    move/from16 v23, v31

    move/from16 v24, v32

    move/from16 v25, v0

    move/from16 v26, v34

    invoke-direct/range {v1 .. v26}, Lcom/qualcomm/location/izatprovider/NpProxy;->nativeOnLocationChanged(ZJZJZDZDZFZFZDZFZFZI)V

    .line 366
    .end local v33    # "extras":Landroid/os/Bundle;
    nop

    .line 379
    move-object/from16 v1, p1

    move-object/from16 v2, p0

    goto :goto_5

    .end local v27    # "msgID":I
    .end local v34    # "source":I
    .end local v35    # "location":Landroid/location/Location;
    .restart local v12    # "msgID":I
    :cond_6
    move/from16 v27, v12

    move v4, v13

    move-object v1, v14

    move-object v2, v15

    .end local v12    # "msgID":I
    .restart local v27    # "msgID":I
    goto :goto_7

    .line 328
    .end local v27    # "msgID":I
    .restart local v12    # "msgID":I
    :pswitch_2
    move/from16 v27, v12

    .end local v12    # "msgID":I
    .restart local v27    # "msgID":I
    move-object/from16 v1, p1

    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/location/ProviderRequest;

    move-object/from16 v2, p0

    iput-object v0, v2, Lcom/qualcomm/location/izatprovider/NpProxy;->mRequests:Lcom/android/internal/location/ProviderRequest;

    .line 329
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/location/izatprovider/NpProxy;->setRequestTry()V

    .line 330
    nop

    .line 379
    :goto_5
    const/4 v4, 0x1

    goto :goto_7

    .line 305
    .end local v27    # "msgID":I
    .restart local v12    # "msgID":I
    :cond_7
    move/from16 v27, v12

    move-object v1, v14

    move-object v2, v15

    .end local v12    # "msgID":I
    .restart local v27    # "msgID":I
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/location/izatprovider/NpProxy;->setNpImplePackageNames()V

    .line 307
    iget-object v3, v2, Lcom/qualcomm/location/izatprovider/NpProxy;->mContext:Landroid/content/Context;

    const-string v4, "location"

    .line 308
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    iput-object v3, v2, Lcom/qualcomm/location/izatprovider/NpProxy;->mLocationManager:Landroid/location/LocationManager;

    .line 310
    const-string v3, "passive"

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 311
    invoke-static {v3, v4, v5, v6, v0}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v3

    .line 313
    .local v3, "request":Landroid/location/LocationRequest;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    .line 315
    :try_start_0
    iget-object v0, v2, Lcom/qualcomm/location/izatprovider/NpProxy;->mLocationManager:Landroid/location/LocationManager;

    iget-object v5, v2, Lcom/qualcomm/location/izatprovider/NpProxy;->mLocationListener:Landroid/location/LocationListener;

    iget-object v6, v2, Lcom/qualcomm/location/izatprovider/NpProxy;->mHandler:Landroid/os/Handler;

    .line 316
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 315
    invoke-virtual {v0, v3, v5, v6}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    goto :goto_6

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v5, "NpProxy"

    const-string v6, "Cannot request for passive location updates"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/location/izatprovider/NpProxy;->initServiceBinding()V

    .line 323
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/location/izatprovider/NpProxy;->nativeOnInstanceInit()V

    .line 324
    nop

    .line 379
    .end local v3    # "request":Landroid/location/LocationRequest;
    :goto_7
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setRegionalNpRegulate(Z)V
    .locals 3
    .param p1, "regulated"    # Z

    .line 468
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 469
    return-void
.end method
