.class public Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
.super Lcom/android/internal/telephony/PhoneSwitcher;
.source "QtiPhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;
    }
.end annotation


# static fields
.field public static isLplusLSupported:Z


# instance fields
.field private final EVENT_ALLOW_DATA_FALSE_RESPONSE:I

.field private final EVENT_ALLOW_DATA_TRUE_RESPONSE:I

.field private final EVENT_DDS_SWITCH_RESPONSE:I

.field private final EVENT_PREFERRED_SUB_VALID:I

.field private final MAX_CONNECT_FAILURE_COUNT:I

.field private final NONUSER_INITIATED_SWITCH:I

.field private final PROPERTY_TEMP_DDSSWITCH:Ljava/lang/String;

.field private final USER_INITIATED_SWITCH:I

.field private mAllowDataFailure:[I

.field private final mBgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

.field private final mBgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mCm:Lcom/android/internal/telephony/CallManager;

.field private mDdsRequestSent:[Z

.field private mDdsSwitchState:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

.field private mDefaultDataPhoneId:I

.field private final mFgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

.field private final mFgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private final mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

.field private mManualDdsSwitch:Z

.field private mNewActivePhones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQtiDdsSwitchController:Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

.field private final mRetryArray:[I

.field private final mRiCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

.field private final mRiImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mSimStateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSimStates:[Ljava/lang/String;

.field private mWaitForDetachResponse:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isLplusLSupported:Z

    return-void
.end method

.method public constructor <init>(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V
    .locals 11
    .param p1, "maxActivePhones"    # I
    .param p2, "numPhones"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "subscriptionController"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p5, "looper"    # Landroid/os/Looper;
    .param p6, "tr"    # Lcom/android/internal/telephony/ITelephonyRegistry;
    .param p7, "cis"    # [Lcom/android/internal/telephony/CommandsInterface;
    .param p8, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 120
    move-object v0, p0

    move v8, p2

    invoke-direct/range {p0 .. p8}, Lcom/android/internal/telephony/PhoneSwitcher;-><init>(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V

    .line 83
    const/4 v1, 0x5

    iput v1, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->MAX_CONNECT_FAILURE_COUNT:I

    .line 84
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mRetryArray:[I

    .line 88
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    .line 89
    const/4 v2, -0x1

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDefaultDataPhoneId:I

    .line 93
    iput-boolean v1, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mWaitForDetachResponse:Z

    .line 94
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;->NONE:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    iput-object v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDdsSwitchState:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    .line 97
    iput v1, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->USER_INITIATED_SWITCH:I

    .line 98
    const/4 v2, 0x1

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->NONUSER_INITIATED_SWITCH:I

    .line 99
    const-string v2, "persist.vendor.radio.enable_temp_dds"

    iput-object v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->PROPERTY_TEMP_DDSSWITCH:Ljava/lang/String;

    .line 108
    const/16 v2, 0xc9

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->EVENT_ALLOW_DATA_FALSE_RESPONSE:I

    .line 109
    const/16 v2, 0xca

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->EVENT_ALLOW_DATA_TRUE_RESPONSE:I

    .line 110
    const/16 v2, 0xcb

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->EVENT_DDS_SWITCH_RESPONSE:I

    .line 111
    const/16 v2, 0xcc

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->EVENT_PREFERRED_SUB_VALID:I

    .line 178
    new-instance v2, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;

    invoke-direct {v2, p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;)V

    iput-object v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    new-array v2, v8, [I

    iput-object v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mAllowDataFailure:[I

    .line 123
    new-array v2, v8, [Z

    iput-object v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDdsRequestSent:[Z

    .line 124
    new-array v2, v8, [Ljava/lang/String;

    iput-object v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStates:[Ljava/lang/String;

    .line 125
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    iput-object v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mCm:Lcom/android/internal/telephony/CallManager;

    .line 126
    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mCm:Lcom/android/internal/telephony/CallManager;

    const/4 v3, 0x0

    const/16 v4, 0x75

    invoke-virtual {v2, p0, v4, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 127
    invoke-static {p3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v2

    iput-object v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 128
    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/16 v4, 0x76

    invoke-virtual {v2, p0, v4, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForUnsol(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 129
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v9, v2

    .line 130
    .local v9, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    iget v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    new-array v2, v2, [Lcom/android/internal/telephony/imsphone/ImsPhone;

    iput-object v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 134
    iget v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    new-array v2, v2, [Lcom/android/internal/telephony/GsmCdmaCall;

    iput-object v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mFgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    .line 135
    iget v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    new-array v2, v2, [Lcom/android/internal/telephony/GsmCdmaCall;

    iput-object v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mBgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    .line 136
    iget v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    new-array v2, v2, [Lcom/android/internal/telephony/GsmCdmaCall;

    iput-object v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mRiCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    .line 137
    iget v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    new-array v2, v2, [Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iput-object v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mFgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 138
    iget v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    new-array v2, v2, [Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iput-object v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mBgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 139
    iget v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    new-array v2, v2, [Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iput-object v2, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mRiImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 141
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    if-ge v2, v3, :cond_2

    .line 142
    iget-object v3, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 143
    iget-object v3, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mFgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/GsmCdmaCall;

    aput-object v4, v3, v2

    .line 144
    iget-object v3, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mBgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/GsmCdmaCall;

    aput-object v4, v3, v2

    .line 145
    iget-object v3, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mRiCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    iget-object v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/GsmCdmaCall;

    aput-object v4, v3, v2

    .line 147
    :cond_0
    iget-object v3, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhone;

    aput-object v4, v3, v2

    .line 148
    iget-object v3, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    aget-object v4, v3, v2

    if-eqz v4, :cond_1

    .line 149
    iget-object v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mFgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v3

    aput-object v3, v4, v2

    .line 150
    iget-object v3, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mBgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v4

    aput-object v4, v3, v2

    .line 151
    iget-object v3, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mRiImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mImsPhones:[Lcom/android/internal/telephony/imsphone/ImsPhone;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v4

    aput-object v4, v3, v2

    .line 154
    :cond_1
    iget-object v3, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDdsRequestSent:[Z

    aput-boolean v1, v3, v2

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .end local v2    # "i":I
    :cond_2
    new-instance v10, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    sget-boolean v7, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isLplusLSupported:Z

    move-object v1, v10

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p8

    invoke-direct/range {v1 .. v7}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;-><init>(ILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;[Lcom/android/internal/telephony/Phone;Z)V

    iput-object v10, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiDdsSwitchController:Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    .line 160
    return-void

    :array_0
    .array-data 4
        0x5
        0xa
        0x14
        0x28
        0x3c
    .end array-data
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
    .param p1, "x1"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    .line 81
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStates:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    .line 81
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDdsRequestSent:[Z

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
    .param p1, "x1"    # I

    .line 81
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isSimReady(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
    .param p1, "x1"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
    .param p1, "x1"    # I

    .line 81
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isPhoneIdValidForRetry(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
    .param p1, "x1"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
    .param p1, "x1"    # I

    .line 81
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->resetConnectFailureCount(I)V

    return-void
.end method

.method private enforceDds(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 607
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v0

    .line 608
    .local v0, "subId":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enforceDds: subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 609
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 610
    return-void
.end method

.method private handleConnectMaxFailure(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 597
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->resetConnectFailureCount(I)V

    .line 598
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 599
    .local v0, "ddsSubId":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 600
    .local v1, "ddsPhoneId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eq p1, v1, :cond_0

    .line 601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ALLOW_DATA retries exhausted on phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 602
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->enforceDds(I)V

    .line 604
    :cond_0
    return-void
.end method

.method private handleUnsolMaxDataAllowedChange(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 209
    if-eqz p1, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 214
    .local v0, "payload":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 215
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 216
    .local v1, "rspId":I
    const v2, 0x8041e

    if-ne v1, v2, :cond_2

    .line 217
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 218
    .local v2, "response_size":I
    if-gez v2, :cond_1

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response size is Invalid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 220
    return-void

    .line 222
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mMaxActivePhones:I

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Unsol Max Data Changed to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mMaxActivePhones:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 225
    .end local v2    # "response_size":I
    :cond_2
    return-void

    .line 210
    .end local v0    # "payload":Ljava/nio/ByteBuffer;
    .end local v1    # "rspId":I
    :cond_3
    :goto_0
    const-string v0, "Null data received in handleUnsolMaxDataAllowedChange"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method private incConnectFailureCount(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 588
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mAllowDataFailure:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 589
    return-void
.end method

.method private informDdsToRil(I)V
    .locals 4
    .param p1, "ddsSubId"    # I

    .line 717
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 719
    .local v0, "ddsPhoneId":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 720
    const-string v1, "Oem hook service is not ready yet"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 721
    return-void

    .line 724
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    if-ge v1, v2, :cond_2

    .line 725
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InformDdsToRil rild= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", DDS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 727
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiDdsSwitchController:Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->isTempDdsSwitchRequired()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 729
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->qcRilSendDDSInfo(III)V

    goto :goto_1

    .line 732
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->qcRilSendDDSInfo(III)V

    .line 724
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 736
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private isAnyVoiceCallActiveOnDevice()Z
    .locals 3

    .line 613
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 614
    .local v0, "ret":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAnyVoiceCallActiveOnDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 615
    return v0
.end method

.method private isCallInProgress()Z
    .locals 1

    .line 742
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneIdInVoiceCall:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    return v0
.end method

.method private isPhoneIdValidForRetry(I)Z
    .locals 7
    .param p1, "phoneId"    # I

    .line 692
    const/4 v0, 0x0

    .line 693
    .local v0, "isValid":Z
    const/4 v1, -0x1

    .line 694
    .local v1, "phoneIdForRequest":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 695
    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v3

    .line 694
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v2

    .line 696
    .local v2, "ddsPhoneId":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-ne v2, p1, :cond_0

    .line 697
    const/4 v0, 0x1

    goto :goto_1

    .line 699
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 700
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mMaxActivePhones:I

    if-ge v3, v4, :cond_2

    .line 701
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DcRequest;

    .line 702
    .local v4, "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    if-eqz v4, :cond_1

    .line 703
    iget-object v5, v4, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnType:I

    invoke-virtual {p0, v5, v6}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->phoneIdForRequest(Landroid/net/NetworkRequest;I)I

    move-result v1

    .line 705
    if-ne v1, p1, :cond_1

    .line 706
    const/4 v0, 0x1

    .line 707
    goto :goto_1

    .line 700
    .end local v4    # "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 713
    .end local v3    # "i":I
    :cond_2
    :goto_1
    return v0
.end method

.method private isSimReady(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 315
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 316
    return v0

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStates:[Ljava/lang/String;

    aget-object v1, v1, p1

    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStates:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 320
    const-string v2, "LOADED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStates:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 321
    const-string v2, "IMSI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 325
    :cond_1
    return v0

    .line 322
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM READY for phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 323
    const/4 v0, 0x1

    return v0
.end method

.method private isUiccProvisioned(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 495
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v0

    .line 496
    .local v0, "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 497
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 498
    .local v1, "status":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUiccProvisioned = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 500
    return v1
.end method

.method private notifyDdsSwitchDone()V
    .locals 3

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDdsSwitchDone on the preferred data SUB = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPreferredDataSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and the preferred phone ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mActivePhoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 677
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->notifyPreferredDataSubIdChanged()V

    .line 679
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDdsSwitchState:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;->DONE:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPreferredDataSubId:I

    .line 680
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDdsSwitchState:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;->NONE:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDdsSwitchState:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    .line 682
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.intent.action.ACTION_DDS_SWITCH_DONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 684
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPreferredDataSubId:I

    const-string v2, "subscription"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 685
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcast dds switch done intent on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPreferredDataSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 687
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 689
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private onDdsSwitchResponse(ILandroid/os/AsyncResult;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 619
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 620
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDdsRequestSent:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 621
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->incConnectFailureCount(I)V

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dds switch failed on phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", failureCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->getConnectFailureCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 622
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 625
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isAnyVoiceCallActiveOnDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    const-string v0, "Wait for call end indication"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 629
    return-void

    .line 632
    :cond_0
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isSimReady(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 635
    const-string v0, "Wait for SIM to get READY"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 636
    return-void

    .line 639
    :cond_1
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->getConnectFailureCount(I)I

    move-result v0

    .line 640
    .local v0, "ddsSwitchFailureCount":I
    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 641
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->handleConnectMaxFailure(I)V

    goto :goto_0

    .line 643
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mRetryArray:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    .line 644
    .local v1, "retryDelay":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling DDS switch retry after: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 645
    new-instance v2, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;

    invoke-direct {v2, p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)V

    int-to-long v3, v1

    invoke-virtual {p0, v2, v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 657
    .end local v0    # "ddsSwitchFailureCount":I
    .end local v1    # "retryDelay":I
    :goto_0
    goto :goto_1

    .line 658
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DDS switch success on phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 659
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->resetConnectFailureCount(I)V

    .line 660
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDdsSwitchState:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;->REQUIRED:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    if-ne v0, v1, :cond_4

    .line 661
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;->DONE:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDdsSwitchState:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    .line 663
    :cond_4
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->notifyDdsSwitchDone()V

    .line 665
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiDdsSwitchController:Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->isTempDdsSwitchRequired()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 666
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiDdsSwitchController:Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->resetTempDdsSwitchRequired()V

    .line 670
    :cond_5
    :goto_1
    return-void
.end method

.method private queryMaxDataAllowed()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getMaxDataAllowed()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mMaxActivePhones:I

    .line 206
    return-void
.end method

.method private resetConnectFailureCount(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 584
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mAllowDataFailure:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 585
    return-void
.end method


# virtual methods
.method protected activate(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 523
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v0, v0, p1

    .line 524
    .local v0, "state":Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;
    iget-boolean v1, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    if-nez v1, :cond_0

    .line 525
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->getConnectFailureCount(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 526
    :cond_0
    iput-boolean v2, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activate "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    .line 529
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mHalCommandToUse:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mHalCommandToUse:I

    if-nez v1, :cond_2

    .line 530
    :cond_1
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPrimaryDataSubId:I

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->informDdsToRil(I)V

    .line 531
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    const/16 v3, 0xca

    const/4 v4, 0x0

    .line 532
    invoke-virtual {p0, v3, p1, v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 531
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 534
    :cond_2
    return-void
.end method

.method protected deactivate(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 505
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v0, v0, p1

    .line 506
    .local v0, "state":Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;
    iget-boolean v1, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    if-nez v1, :cond_0

    .line 507
    return-void

    .line 509
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deactivate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    .line 512
    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mHalCommandToUse:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mHalCommandToUse:I

    if-nez v2, :cond_2

    .line 513
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneSubscriptions:[I

    aget v4, v4, p1

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 514
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, p1

    const/16 v4, 0xc9

    .line 515
    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 514
    invoke-interface {v2, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 516
    iput-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mWaitForDetachResponse:Z

    .line 519
    :cond_2
    return-void
.end method

.method public getConnectFailureCount(I)I
    .locals 1
    .param p1, "phoneId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mAllowDataFailure:[I

    aget v0, v0, p1

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 229
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 230
    .local v0, "ddsSubId":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 232
    .local v1, "ddsPhoneId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle event - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 233
    const/4 v2, 0x0

    .line 234
    .local v2, "ar":Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x66

    const/4 v5, 0x0

    if-eq v3, v4, :cond_8

    const/16 v4, 0x6c

    if-eq v3, v4, :cond_6

    const/16 v4, 0x75

    if-eq v3, v4, :cond_3

    const/16 v4, 0x76

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    .line 310
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_5

    .line 305
    :pswitch_0
    const-string v3, "EVENT_PREFERRED_SUB_VALID"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 306
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->notifyDdsSwitchDone()V

    .line 307
    goto/16 :goto_5

    .line 300
    :pswitch_1
    const-string v3, "EVENT_DDS_SWITCH_RESPONSE"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 301
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-direct {p0, v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->onDdsSwitchResponse(ILandroid/os/AsyncResult;)V

    .line 302
    goto/16 :goto_5

    .line 284
    :pswitch_2
    const-string v3, "EVENT_ALLOW_DATA_TRUE_RESPONSE"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 285
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-direct {p0, v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->onDdsSwitchResponse(ILandroid/os/AsyncResult;)V

    .line 286
    goto/16 :goto_5

    .line 289
    :pswitch_3
    const-string v3, "EVENT_ALLOW_DATA_FALSE_RESPONSE"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 290
    iput-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mWaitForDetachResponse:Z

    .line 291
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNewActivePhones:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 292
    .local v4, "phoneId":I
    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->activate(I)V

    .line 293
    .end local v4    # "phoneId":I
    goto :goto_0

    .line 294
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNewActivePhones:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 295
    iput-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    goto/16 :goto_5

    .line 258
    :cond_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 260
    .local v3, "asyncresult":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 261
    iget-object v4, v3, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->handleUnsolMaxDataAllowedChange(Landroid/os/Message;)V

    goto/16 :goto_5

    .line 263
    :cond_2
    const-string v4, "Error: empty result, EVENT_UNSOL_MAX_DATA_ALLOWED_CHANGED"

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 265
    goto :goto_5

    .line 268
    .end local v3    # "asyncresult":Lorg/codeaurora/telephony/utils/AsyncResult;
    :cond_3
    const-string v3, "EVENT_VOICE_CALL_ENDED"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 269
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isAnyVoiceCallActiveOnDevice()Z

    move-result v3

    if-nez v3, :cond_5

    .line 270
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    if-ge v3, v4, :cond_5

    .line 271
    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->getConnectFailureCount(I)I

    move-result v4

    if-lez v4, :cond_4

    .line 272
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isPhoneIdValidForRetry(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 273
    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->sendRilCommands(I)V

    .line 274
    goto :goto_2

    .line 270
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 280
    .end local v3    # "i":I
    :cond_5
    :goto_2
    const-string v3, "voice call ended"

    invoke-virtual {p0, v5, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    .line 281
    goto :goto_5

    .line 245
    :cond_6
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 246
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->queryMaxDataAllowed()V

    .line 247
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getLpluslSupportStatus()Z

    move-result v3

    sput-boolean v3, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isLplusLSupported:Z

    .line 249
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiDdsSwitchController:Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;

    sget-boolean v4, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isLplusLSupported:Z

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiDdsSwitchController;->updateLplusLStatus(Z)V

    goto :goto_3

    .line 252
    :cond_7
    const-string v3, "Oem hook service is not ready"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 254
    :goto_3
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->handleMessage(Landroid/os/Message;)V

    .line 255
    goto :goto_5

    .line 236
    :cond_8
    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mHalCommandToUse:I

    if-nez v3, :cond_a

    .line 237
    const-string v3, "EVENT_SUBSCRIPTION_CHANGED: update HAL command"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 238
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RadioConfig;->isSetPreferredDataCommandSupported()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 239
    const/4 v3, 0x2

    goto :goto_4

    :cond_9
    const/4 v3, 0x1

    :goto_4
    iput v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mHalCommandToUse:I

    .line 241
    :cond_a
    const-string v3, "subChanged"

    invoke-virtual {p0, v5, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    .line 242
    nop

    .line 312
    :cond_b
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected isCallActive(Lcom/android/internal/telephony/Phone;)Z
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 566
    const/4 v0, 0x0

    const-string v1, "persist.vendor.radio.enable_temp_dds"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 567
    return v0

    .line 569
    :cond_0
    if-nez p1, :cond_1

    .line 570
    return v0

    .line 573
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 574
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mFgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mBgCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v2, v2, v1

    .line 575
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mRiCsCalls:[Lcom/android/internal/telephony/GsmCdmaCall;

    aget-object v2, v2, v1

    .line 576
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mFgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v2, v2, v1

    .line 577
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mBgImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v2, v2, v1

    .line 578
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mRiImsCalls:[Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    aget-object v2, v2, v1

    .line 579
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 574
    :cond_3
    return v0
.end method

.method protected onEvaluate(ZLjava/lang/String;)Z
    .locals 16
    .param p1, "requestsChanged"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 331
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    .local v1, "sb":Ljava/lang/StringBuilder;
    move/from16 v3, p1

    .line 336
    .local v3, "diffDetected":Z
    iget-object v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v4

    .line 337
    .local v4, "primaryDataSubId":I
    iget-object v5, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v5

    .line 338
    .local v5, "ddsPhoneId":I
    iget v6, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPrimaryDataSubId:I

    const-string v7, "->"

    if-eq v4, v6, :cond_0

    .line 339
    const-string v6, " mPrimaryDataSubId "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPrimaryDataSubId:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    .line 342
    iput v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPrimaryDataSubId:I

    .line 346
    :cond_0
    const/4 v6, 0x0

    .line 349
    .local v6, "hasAnyActiveSubscription":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v9, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    if-ge v8, v9, :cond_3

    .line 350
    iget-object v9, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v9, v8}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v9

    .line 352
    .local v9, "sub":I
    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v6, 0x1

    .line 354
    :cond_1
    iget-object v10, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneSubscriptions:[I

    aget v10, v10, v8

    if-eq v9, v10, :cond_2

    .line 355
    const-string v10, " phone["

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneSubscriptions:[I

    aget v10, v10, v8

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    iget-object v10, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneSubscriptions:[I

    aput v9, v10, v8

    .line 358
    const/4 v3, 0x1

    .line 349
    .end local v9    # "sub":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 362
    .end local v8    # "i":I
    :cond_3
    if-nez v6, :cond_4

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->transitionToEmergencyPhone()V

    .line 367
    :cond_4
    iget v8, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPreferredDataSubId:I

    .line 368
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v8

    .line 370
    .local v8, "isOldPeferredDataSubValid":Z
    iget v9, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPreferredDataPhoneId:I

    .line 377
    .local v9, "oldPreferredDataPhoneId":I
    if-eqz v6, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->updatePreferredDataPhoneId()V

    .line 379
    :cond_5
    iget v10, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPreferredDataSubId:I

    .line 380
    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v10

    .line 382
    .local v10, "isPeferredDataSubValid":Z
    if-nez v8, :cond_6

    if-eqz v10, :cond_6

    .line 386
    const/16 v11, 0xcc

    invoke-virtual {v0, v11}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->sendEmptyMessage(I)Z

    .line 389
    :cond_6
    iget v11, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPreferredDataPhoneId:I

    const/4 v12, 0x0

    if-eq v9, v11, :cond_8

    .line 390
    const-string v11, " preferred phoneId "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 392
    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 393
    iget-object v7, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDdsRequestSent:[Z

    aput-boolean v12, v7, v9

    .line 395
    :cond_7
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;->REQUIRED:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    iput-object v7, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDdsSwitchState:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$DdsSwitchState;

    .line 396
    const/4 v3, 0x1

    .line 399
    :cond_8
    if-eqz v3, :cond_13

    .line 400
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "evaluating due to "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 401
    iget v7, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mHalCommandToUse:I

    const/4 v11, 0x2

    if-ne v7, v11, :cond_a

    .line 404
    const/4 v7, 0x0

    .local v7, "phoneId":I
    :goto_1
    iget v11, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    if-ge v7, v11, :cond_9

    .line 405
    invoke-virtual {v0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->activate(I)V

    .line 404
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 407
    .end local v7    # "phoneId":I
    :cond_9
    iget v7, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {v0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->sendRilCommands(I)V

    goto/16 :goto_7

    .line 409
    :cond_a
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v7, "newActivePhones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v11, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/dataconnection/DcRequest;

    .line 412
    .local v13, "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    iget-object v14, v13, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    iget v15, v13, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnType:I

    invoke-virtual {v0, v14, v15}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->phoneIdForRequest(Landroid/net/NetworkRequest;I)I

    move-result v14

    .line 414
    .local v14, "phoneIdForRequest":I
    const/4 v15, -0x1

    if-ne v14, v15, :cond_b

    goto :goto_2

    .line 415
    :cond_b
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v7, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    goto :goto_2

    .line 416
    :cond_c
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    iget v12, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mMaxActivePhones:I

    if-lt v15, v12, :cond_d

    goto :goto_3

    .line 418
    .end local v13    # "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    .end local v14    # "phoneIdForRequest":I
    :cond_d
    const/4 v12, 0x0

    goto :goto_2

    .line 430
    :cond_e
    :goto_3
    iput-object v7, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNewActivePhones:Ljava/util/List;

    .line 431
    const/4 v11, 0x0

    .local v11, "phoneId":I
    :goto_4
    iget v12, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    if-ge v11, v12, :cond_10

    .line 432
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 433
    invoke-virtual {v0, v11}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->deactivate(I)V

    .line 431
    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 436
    .end local v11    # "phoneId":I
    :cond_10
    iget-boolean v11, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mWaitForDetachResponse:Z

    if-nez v11, :cond_13

    .line 438
    iget-object v11, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNewActivePhones:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 439
    .local v11, "activateDdsPhone":Z
    if-eqz v11, :cond_11

    iget-boolean v12, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    if-eqz v12, :cond_11

    .line 440
    invoke-virtual {v0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->activate(I)V

    goto :goto_6

    .line 442
    :cond_11
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 443
    .local v13, "phoneId":I
    invoke-virtual {v0, v13}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->activate(I)V

    .line 444
    .end local v13    # "phoneId":I
    goto :goto_5

    .line 446
    :cond_12
    :goto_6
    if-eqz v11, :cond_13

    .line 447
    const/4 v12, 0x0

    iput-boolean v12, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    .line 453
    .end local v7    # "newActivePhones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "activateDdsPhone":Z
    :cond_13
    :goto_7
    return v3
.end method

.method protected phoneIdForRequest(Landroid/net/NetworkRequest;I)I
    .locals 5
    .param p1, "netRequest"    # Landroid/net/NetworkRequest;
    .param p2, "apnType"    # I

    .line 459
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->getSubIdFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v0

    .line 461
    .local v0, "subId":I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPreferredDataPhoneId:I

    return v1

    .line 462
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return v1

    .line 464
    :cond_1
    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 465
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneSubscriptions:[I

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPreferredDataPhoneId:I

    aget v2, v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    .line 470
    .local v2, "preferredDataSubId":I
    :goto_0
    const/16 v3, 0xc

    invoke-virtual {p1, v3}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xd

    .line 471
    invoke-virtual {p1, v3}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eq v0, v2, :cond_3

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mValidator:Lcom/android/internal/telephony/CellularNetworkValidator;

    .line 472
    invoke-virtual {v3}, Lcom/android/internal/telephony/CellularNetworkValidator;->getSubIdInValidation()I

    move-result v3

    if-eq v0, v3, :cond_3

    .line 474
    return v1

    .line 478
    :cond_3
    const/16 v1, 0x40

    if-ne v1, p2, :cond_4

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mMaxActivePhones:I

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    if-eq v1, v3, :cond_4

    .line 480
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPrimaryDataSubId:I

    .line 484
    :cond_4
    const/4 v1, -0x1

    .line 485
    .local v1, "phoneId":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    if-ge v3, v4, :cond_6

    .line 486
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneSubscriptions:[I

    aget v4, v4, v3

    if-ne v4, v0, :cond_5

    .line 487
    move v1, v3

    .line 488
    goto :goto_2

    .line 485
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 491
    .end local v3    # "i":I
    :cond_6
    :goto_2
    return v1
.end method

.method protected sendRilCommands(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 538
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    if-lt p1, v0, :cond_0

    goto :goto_3

    .line 543
    :cond_0
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mHalCommandToUse:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mHalCommandToUse:I

    if-nez v0, :cond_1

    goto :goto_0

    .line 547
    :cond_1
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPreferredDataPhoneId:I

    if-ne p1, v0, :cond_5

    .line 548
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDdsRequestSent:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_2

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendRilCommands: setPreferredDataModem - phoneId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    const/16 v3, 0xcb

    .line 552
    invoke-virtual {p0, v3, p1, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 551
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/RadioConfig;->setPreferredDataModem(ILandroid/os/Message;)V

    .line 553
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDdsRequestSent:[Z

    aput-boolean v2, v0, p1

    goto :goto_2

    .line 555
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRilCommands: setPreferredDataModem request already sent on phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 544
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isPhoneActive(I)Z

    move-result v2

    .line 545
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isPhoneActive(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0xca

    goto :goto_1

    .line 546
    :cond_4
    const/16 v3, 0xc9

    :goto_1
    nop

    .line 545
    invoke-virtual {p0, v3, p1, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 544
    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 559
    :cond_5
    :goto_2
    return-void

    .line 539
    :cond_6
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRilCommands: skip dds switch due to invalid phoneid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 540
    return-void
.end method
