.class public Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;
.super Ljava/lang/Object;
.source "QtiDdsSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController$DdsSwitchHandler;
    }
.end annotation


# static fields
.field public static mTempDdsSwitchRequired:Z


# instance fields
.field private final EVENT_PRECISE_CS_CALL_STATE_CHANGED:I

.field private final EVENT_PRECISE_IMS_CALL_STATE_CHANGED:I

.field private final LOG_TAG:Ljava/lang/String;

.field private final PROPERTY_TEMP_DDSSWITCH:Ljava/lang/String;

.field private isLplusLSupported:Z

.field private isPropertyEnabled:Z

.field private final mBgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

.field private final mBgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private final mContext:Landroid/content/Context;

.field private final mDdsSwitchHandler:Landroid/os/Handler;

.field private final mFgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

.field private final mFgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private final mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

.field private mIsCallActive:Z

.field private mNotifyCallState:Z

.field private final mNumPhones:I

.field private final mPhones:[Lcom/android/internal/telephony/Phone;

.field private final mRiCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

.field private final mRiImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private final mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserDdsSubId:I

.field private phoneMgr:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mTempDdsSwitchRequired:Z

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;[Lcom/android/internal/telephony/Phone;Z)V
    .locals 3
    .param p1, "numPhones"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subscriptionController"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "phones"    # [Lcom/android/internal/telephony/Phone;
    .param p6, "status"    # Z

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "QtiDdsSwitchController"

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->LOG_TAG:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 53
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->phoneMgr:Lcom/android/internal/telephony/ITelephony;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mIsCallActive:Z

    .line 59
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mNotifyCallState:Z

    .line 65
    const/4 v1, -0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mUserDdsSubId:I

    .line 68
    const-string v1, "persist.vendor.radio.enable_temp_dds"

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->PROPERTY_TEMP_DDSSWITCH:Ljava/lang/String;

    .line 69
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->isPropertyEnabled:Z

    .line 72
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->isLplusLSupported:Z

    .line 75
    const/16 v0, 0x65

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->EVENT_PRECISE_CS_CALL_STATE_CHANGED:I

    .line 76
    const/16 v0, 0x66

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->EVENT_PRECISE_IMS_CALL_STATE_CHANGED:I

    .line 84
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mNumPhones:I

    .line 85
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mContext:Landroid/content/Context;

    .line 86
    iput-object p3, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 87
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController$DdsSwitchHandler;

    invoke-direct {v0, p0, p4}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController$DdsSwitchHandler;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mDdsSwitchHandler:Landroid/os/Handler;

    .line 88
    iput-object p5, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 89
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mNumPhones:I

    new-array v1, v0, [Lcom/android/internal/telephony/imsphone/ImsPhone;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 90
    new-array v1, v0, [Lcom/android/internal/telephony/GsmCdmaCall;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mFgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    .line 91
    new-array v1, v0, [Lcom/android/internal/telephony/GsmCdmaCall;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mBgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    .line 92
    new-array v1, v0, [Lcom/android/internal/telephony/GsmCdmaCall;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mRiCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    .line 93
    new-array v1, v0, [Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mFgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 94
    new-array v1, v0, [Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mBgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 95
    new-array v0, v0, [Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mRiImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 96
    iput-boolean p6, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->isLplusLSupported:Z

    .line 98
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mContext:Landroid/content/Context;

    .line 99
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 100
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->phoneMgr:Lcom/android/internal/telephony/ITelephony;

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhone;

    aput-object v2, v1, v0

    .line 105
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mFgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/GsmCdmaCall;

    aput-object v1, v2, v0

    .line 107
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mBgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaCall;

    aput-object v2, v1, v0

    .line 108
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mRiCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaCall;

    aput-object v2, v1, v0

    .line 110
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mFgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    aput-object v2, v1, v0

    .line 111
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mBgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    aput-object v2, v1, v0

    .line 112
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mRiImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    aput-object v2, v1, v0

    .line 103
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    .line 38
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mNotifyCallState:Z

    return v0
.end method

.method static synthetic access$002(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mNotifyCallState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    .line 38
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mUserDdsSubId:I

    return v0
.end method

.method static synthetic access$102(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;
    .param p1, "x1"    # I

    .line 38
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mUserDdsSubId:I

    return p1
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    .line 38
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;)[Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    .line 38
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mPhones:[Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    .line 38
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->isFeatureEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;
    .param p1, "x1"    # I

    .line 38
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->isCallOnNonDds(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;
    .param p1, "x1"    # I

    .line 38
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->processCallStateChanged(I)V

    return-void
.end method

.method private isCallActive(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 226
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mFgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mBgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v0, v0, p1

    .line 227
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mRiCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v0, v0, p1

    .line 228
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mFgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v0, v0, p1

    .line 229
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mBgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v0, v0, p1

    .line 230
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mRiImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v0, v0, p1

    .line 231
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 226
    :goto_1
    return v0
.end method

.method private isCallIdle(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 246
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mFgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mBgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v0, v0, p1

    .line 247
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mRiCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v0, v0, p1

    .line 248
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mFgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v0, v0, p1

    .line 249
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mBgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v0, v0, p1

    .line 250
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mRiImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v0, v0, p1

    .line 251
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 246
    :goto_0
    return v0
.end method

.method private isCallOnNonDds(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 258
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mUserDdsSubId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 259
    .local v0, "ddsPhoneId":I
    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isFeatureEnabled()Z
    .locals 2

    .line 217
    const-string v0, "persist.vendor.radio.enable_temp_dds"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->isPropertyEnabled:Z

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPropertyEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->isPropertyEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->log(Ljava/lang/String;)V

    .line 219
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->isPropertyEnabled:Z

    return v0
.end method

.method private isImsCallActive(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 236
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mFgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mBgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v0, v0, p1

    .line 237
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mRiImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v0, v0, p1

    .line 238
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 236
    :goto_1
    return v0
.end method

.method public static isTempDdsSwitchRequired()Z
    .locals 1

    .line 169
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mTempDdsSwitchRequired:Z

    return v0
.end method

.method private onCallEnded(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 143
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mTempDdsSwitchRequired:Z

    .line 144
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v1

    aget v1, v1, v0

    .line 145
    .local v1, "callSubId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallEnded callSubId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->log(Ljava/lang/String;)V

    .line 146
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->phoneMgr:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_0

    .line 147
    const-string v2, "phoneMgr is null "

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->log(Ljava/lang/String;)V

    .line 148
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->phoneMgr:Lcom/android/internal/telephony/ITelephony;

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mUserDdsSubId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set DDS to actual sub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mUserDdsSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "callSubId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->log(Ljava/lang/String;)V

    .line 154
    if-ltz v1, :cond_1

    .line 155
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->phoneMgr:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, v1, v0}, Lcom/android/internal/telephony/ITelephony;->setDataAllowedDuringVoiceCall(IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataAllowedDuringVoiceCall error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->loge(Ljava/lang/String;)V

    .line 159
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_0
    goto :goto_1

    .line 161
    :cond_2
    const-string v0, "User dds sub is invalid, skip dds reset"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->log(Ljava/lang/String;)V

    .line 163
    :goto_1
    return-void
.end method

.method private onCallStarted(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 122
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mUserDdsSubId:I

    .line 123
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 125
    .local v0, "callSubId":I
    const/4 v1, 0x1

    sput-boolean v1, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mTempDdsSwitchRequired:Z

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trigger temporary DDS switch to sub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->log(Ljava/lang/String;)V

    .line 128
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->phoneMgr:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_0

    .line 129
    const-string v2, "phoneMgr is null,re-init it."

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->log(Ljava/lang/String;)V

    .line 130
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->phoneMgr:Lcom/android/internal/telephony/ITelephony;

    .line 133
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->phoneMgr:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telephony/ITelephony;->setDataAllowedDuringVoiceCall(IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataAllowedDuringVoiceCall error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->loge(Ljava/lang/String;)V

    .line 137
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private processCallStateChanged(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 268
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mIsCallActive:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->isImsCallActive(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    const-string v0, "notifyCallStateChanged: call active on non dds"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->log(Ljava/lang/String;)V

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mIsCallActive:Z

    .line 271
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->onCallStarted(I)V

    goto :goto_0

    .line 272
    :cond_0
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->isCallIdle(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mNotifyCallState:Z

    .line 275
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mIsCallActive:Z

    if-eqz v1, :cond_2

    .line 276
    const-string v1, "notifyCallStateChanged: call disconnected on non dds"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->log(Ljava/lang/String;)V

    .line 277
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mIsCallActive:Z

    .line 278
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->onCallEnded(I)V

    goto :goto_0

    .line 281
    :cond_1
    const-string v0, "ignore call state change"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->log(Ljava/lang/String;)V

    .line 283
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "l"    # Ljava/lang/String;

    .line 331
    const-string v0, "QtiDdsSwitchController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "l"    # Ljava/lang/String;

    .line 334
    const-string v0, "QtiDdsSwitchController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void
.end method

.method public resetTempDdsSwitchRequired()V
    .locals 1

    .line 178
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mTempDdsSwitchRequired:Z

    .line 179
    return-void
.end method

.method public updateLplusLStatus(Z)V
    .locals 5
    .param p1, "status"    # Z

    .line 185
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->isLplusLSupported:Z

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLplusLStatus - status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->log(Ljava/lang/String;)V

    .line 187
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->isLplusLSupported:Z

    if-eqz v0, :cond_3

    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mNumPhones:I

    if-ge v0, v1, :cond_2

    .line 189
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register for call state change on phone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->log(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mDdsSwitchHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    .line 192
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 191
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register for call state change on ims phone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->log(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mDdsSwitchHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    .line 197
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 196
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 188
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_2
    goto :goto_2

    .line 201
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mNumPhones:I

    if-ge v0, v1, :cond_6

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregister for call state change on phone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->log(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v1, v0

    if-eqz v2, :cond_4

    .line 204
    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mDdsSwitchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 206
    :cond_4
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    aget-object v2, v1, v0

    if-eqz v2, :cond_5

    .line 207
    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->mDdsSwitchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 201
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 211
    .end local v0    # "i":I
    :cond_6
    :goto_2
    return-void
.end method
