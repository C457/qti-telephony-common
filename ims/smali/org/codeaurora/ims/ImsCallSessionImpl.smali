.class public Lorg/codeaurora/ims/ImsCallSessionImpl;
.super Landroid/telephony/ims/stub/ImsCallSessionImplBase;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;,
        Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    }
.end annotation


# static fields
.field private static final ADD_PARTICIPANT_SEPARATOR:Ljava/lang/String; = ";"

.field private static final ALERT_HANDOVER:I = 0x1

.field private static final ALERT_TIMES_AFTER_DROP_CALL:I = 0x3

.field public static final CALL_FAIL_OEM_CAUSE_1:I = 0x235

.field public static final CALL_FAIL_OEM_CAUSE_2:I = 0x236

.field private static final DEFAULT_CALL_INDEX:I = -0x1

.field private static final EVENT_ACCEPT:I = 0x2

.field private static final EVENT_ADD_PARTICIPANT:I = 0x8

.field private static final EVENT_ADD_PARTICIPANTS:I = 0x11

.field private static final EVENT_CLOSE_SESSION:I = 0xb

.field private static final EVENT_CONFERENCE:I = 0x6

.field private static final EVENT_DEFLECT:I = 0x10

.field private static final EVENT_DIAL:I = 0x1

.field private static final EVENT_HANGUP:I = 0x3

.field private static final EVENT_HOLD:I = 0x4

.field private static final EVENT_REJECT:I = 0x7

.field private static final EVENT_REMOVE_PARTICIPANT:I = 0xa

.field private static final EVENT_RESUME:I = 0x5

.field private static final EVENT_RINGBACK_TONE:I = 0x9

.field private static final EVENT_RTT_MESSAGE_RECEIVED:I = 0xc

.field private static final EVENT_RTT_UPGRADE_CONFIRM_DONE:I = 0xf

.field private static final EVENT_SEND_RTT_MESSAGE:I = 0xd

.field private static final EVENT_SEND_RTT_MODIFY_REQUEST:I = 0xe

.field private static final EVENT_VOICE_INFO_CHANGED:I = 0x12

.field public static final PROPERTY_DBG_ENCRYPTION_OVERRIDE:Ljava/lang/String; = "persist.dbg.call_encrypt_ovr"

.field public static final PROPERTY_DBG_ENCRYPTION_OVERRIDE_DEFAULT:I = 0x0

.field private static final RESET_ALERT_HANDOVER_TIME:I = 0x2

.field private static final RESET_TIME:J = 0x1b7740L

.field public static final SIP_FORBIDDEN:I = 0x193

.field public static final SIP_REQUEST_TIMEOUT:I = 0x198

.field public static final SIP_SERVER_BAD_GATEWAY:I = 0x1f6

.field public static final SIP_SERVER_INTERNAL_ERROR:I = 0x1f4

.field public static final SIP_SERVER_MESSAGE_TOOLARGE:I = 0x201

.field public static final SIP_SERVER_NOT_IMPLEMENTED:I = 0x1f5

.field public static final SIP_SERVER_PRECONDITION_FAILURE:I = 0x244

.field public static final SIP_SERVER_VERSION_UNSUPPORTED:I = 0x1f9

.field public static final SIP_SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final SIP_TEMPORARILY_UNAVAILABLE:I = 0x1e0

.field public static final SUPP_NOTIFICATION_TYPE_MO:I = 0x0

.field public static final SUPP_NOTIFICATION_TYPE_MT:I = 0x1

.field public static final SUPP_SVC_CODE_INVALID:I = -0x1

.field public static final SUPP_SVC_CODE_MT_HOLD:I = 0x2

.field public static final SUPP_SVC_CODE_MT_RESUME:I = 0x3

.field private static final VOLUME_FOR_ALERT:I = 0x28


# instance fields
.field private mAlertingToast:Z

.field private mCallId:I

.field private mCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mCallProperty:I

.field public mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

.field private mCallee:Ljava/lang/String;

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

.field private mContext:Landroid/content/Context;

.field private mDc:Lorg/codeaurora/ims/DriverCallIms;

.field private mDisconnCause:I

.field private mHandler:Landroid/os/Handler;

.field private mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

.field private mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

.field mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

.field private mInCall:Z

.field private mIsCallTerminatedDueToLowBattery:Z

.field private mIsConfInProgress:Z

.field public mIsConferenceHostSession:Z

.field private mIsLowBattery:Z

.field private mIsVideoAllowed:Z

.field private mIsVoiceAllowed:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mMtSuppSvcCode:I

.field private mPendingAddParticipantsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I

.field private mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mRingbackToneRequest:Z

.field private mState:I

.field private mStateChangeReportingAllowed:Z

.field private mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

.field private mVoWifiQuality:I

.field private mWifiAlertHandler:Landroid/os/Handler;

.field private newSession:Lorg/codeaurora/ims/ImsCallSessionImpl;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "phoneId"    # I
    .param p4, "tracker"    # Lorg/codeaurora/ims/ImsServiceClassTracker;
    .param p5, "isVideoCapable"    # Z

    .line 191
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;-><init>()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 143
    const/4 v1, -0x1

    iput v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 145
    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    const/4 v3, 0x7

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 147
    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v2, v4, v3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 149
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 150
    new-instance v2, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 151
    const/4 v2, 0x0

    iput v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 153
    new-instance v3, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;

    invoke-direct {v3, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 154
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 155
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 156
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->newSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 157
    iput v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    .line 158
    iput v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mMtSuppSvcCode:I

    .line 159
    iput v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    .line 160
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    .line 161
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    .line 162
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    .line 167
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    .line 168
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    .line 169
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    .line 171
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 172
    iput-boolean v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    .line 173
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    .line 174
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCallTerminatedDueToLowBattery:Z

    .line 175
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    .line 176
    iput v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mVoWifiQuality:I

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    .line 179
    iput v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProperty:I

    .line 180
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mAlertingToast:Z

    .line 192
    iput-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 193
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 194
    iput-object p4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 195
    iput p3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    .line 197
    if-nez p5, :cond_1

    const v1, 0x7f030003

    .line 198
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isConfigEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    move v1, v2

    .line 199
    .local v1, "shallCreateVideoProvider":Z
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeCreateVideoProvider(Z)V

    .line 200
    iput-boolean p5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    .line 201
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRttMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 202
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x12

    invoke-virtual {v2, v3, v4, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForVoiceInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 203
    return-void
.end method

.method public constructor <init>(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;ZI)V
    .locals 6
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "tracker"    # Lorg/codeaurora/ims/ImsServiceClassTracker;
    .param p5, "isVideoCapable"    # Z
    .param p6, "phoneId"    # I

    .line 251
    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move v3, p6

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;Z)V

    .line 253
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 254
    iput-object p4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 255
    new-instance v0, Lorg/codeaurora/ims/parser/ConfInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/ConfInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    .line 256
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 257
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;ZI)V
    .locals 6
    .param p1, "call"    # Lorg/codeaurora/ims/DriverCallIms;
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "tracker"    # Lorg/codeaurora/ims/ImsServiceClassTracker;
    .param p5, "isVideoCapable"    # Z
    .param p6, "phoneId"    # I

    .line 262
    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move v3, p6

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;Z)V

    .line 265
    new-instance v0, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v0, p1}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/DriverCallIms;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 266
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget v0, v0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 267
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 270
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 272
    new-instance v0, Lorg/codeaurora/ims/parser/ConfInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/ConfInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    .line 273
    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsCallSessionImpl;)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 91
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsCallSessionImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->processAddParticipantsList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 91
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->startBeepForAlert()V

    return-void
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "x1"    # Z

    .line 91
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->processAddParticipantResponse(Z)V

    return-void
.end method

.method static synthetic access$302(Lorg/codeaurora/ims/ImsCallSessionImpl;I)I
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "x1"    # I

    .line 91
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    return p1
.end method

.method static synthetic access$400(Lorg/codeaurora/ims/ImsCallSessionImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 91
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lorg/codeaurora/ims/ImsCallSessionImpl;Ljava/lang/String;Lorg/codeaurora/ims/ImsRilException;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/codeaurora/ims/ImsRilException;

    .line 91
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeDisplaySuppServiceErrorMsg(Ljava/lang/String;Lorg/codeaurora/ims/ImsRilException;)V

    return-void
.end method

.method static synthetic access$600(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 91
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    return v0
.end method

.method static synthetic access$602(Lorg/codeaurora/ims/ImsCallSessionImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    return p1
.end method

.method static synthetic access$700(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 91
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    return-object v0
.end method

.method static synthetic access$800(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 91
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->doClose()V

    return-void
.end method

.method static synthetic access$900(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "x1"    # I

    .line 91
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyVoiceInfoChanged(I)V

    return-void
.end method

.method private alertForHandoverFailed()V
    .locals 2

    .line 2643
    const-string v0, "config_regional_wifi_calling_notificaion_enable"

    const-string v1, "com.android.settings"

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getResBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2645
    .local v0, "shouldAlert":Z
    if-eqz v0, :cond_0

    .line 2646
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->startAlert()V

    .line 2648
    :cond_0
    return-void
.end method

.method private canDial(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 1
    .param p1, "details"    # Lorg/codeaurora/ims/CallDetails;

    .line 2084
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isLowBattery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2085
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2086
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isNotCsVideoCall(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2084
    :goto_1
    return v0
.end method

.method private doClose()V
    .locals 4

    .line 1224
    const-string v0, "doClose!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1226
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isImsCallSessionAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    const-string v0, "Received Session Close request while it is alive"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1230
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 1231
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-eqz v0, :cond_1

    .line 1232
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallModification;->close()V

    .line 1234
    :cond_1
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1235
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz v0, :cond_3

    .line 1236
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->dispose()V

    .line 1237
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    goto :goto_0

    .line 1240
    :cond_2
    const-string v0, "Not clearing listener, ongoing merge."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1242
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v0, v0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-eqz v0, :cond_4

    .line 1243
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 1245
    :cond_4
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifySessionClosed()V

    .line 1246
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 1247
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1248
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1249
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->deregisterForVoiceInfo(Landroid/os/Handler;)V

    .line 1250
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 1251
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 1252
    iput v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 1253
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1254
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1255
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1256
    iput v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 1257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mInCall:Z

    .line 1258
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 1259
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 1260
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->newSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 1261
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    .line 1262
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    .line 1263
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1264
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    .line 1265
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    .line 1266
    iput v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    goto :goto_1

    .line 1248
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1268
    :cond_5
    :goto_1
    return-void
.end method

.method private extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 8
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 1549
    if-nez p1, :cond_0

    .line 1550
    const-string v0, "Null dcUpdate in extractCallDetailsIntoCallProfile"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1551
    return-void

    .line 1553
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 1563
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 1565
    const/4 v0, 0x0

    .line 1566
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1567
    .local v1, "keyAndValue":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1569
    .local v2, "namespaceAndKey":[Ljava/lang/String;
    const/4 v3, 0x0

    move-object v4, v2

    move-object v2, v1

    move-object v1, v0

    move v0, v3

    .local v0, "i":I
    .local v1, "key":Ljava/lang/String;
    .local v2, "keyAndValue":[Ljava/lang/String;
    .local v4, "namespaceAndKey":[Ljava/lang/String;
    :goto_0
    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v5, v5, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_4

    .line 1570
    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v5, v5, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v5, v5, v0

    if-eqz v5, :cond_3

    .line 1571
    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v5, v5, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v5, v5, v0

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1573
    aget-object v5, v2, v3

    if-eqz v5, :cond_2

    .line 1578
    aget-object v5, v2, v3

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 1579
    aget-object v5, v2, v3

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1580
    aget-object v1, v4, v6

    goto :goto_1

    .line 1582
    :cond_1
    aget-object v1, v2, v3

    .line 1595
    :goto_1
    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    aget-object v6, v2, v6

    invoke-virtual {v5, v1, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1585
    :cond_2
    const-string v3, "Bad extra string from lower layers!"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1586
    return-void

    .line 1589
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Element "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is null in CallDetails Extras!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1590
    return-void

    .line 1599
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keyAndValue":[Ljava/lang/String;
    .end local v4    # "namespaceAndKey":[Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private extractHistoryInfoDetails(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "historyInfoString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2058
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2059
    .local v0, "historyInfoStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "[\\r\\n]+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2062
    .local v1, "historyInfoHops":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 2063
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2064
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extractHistoryInfoDetails :: historyInfoHops["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2062
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2067
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private extractProfileExtrasIntoCallDetails(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/CallDetails;)V
    .locals 9
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "details"    # Lorg/codeaurora/ims/CallDetails;

    .line 2098
    iget-object v0, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v1, "OemCallExtras"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 2099
    .local v0, "callExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 2100
    const/4 v1, 0x0

    .line 2101
    .local v1, "extraString":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 2102
    .local v2, "extras":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 2106
    .local v3, "i":I
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2107
    .local v5, "key":Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_0

    const-string v8, ""

    goto :goto_1

    .line 2108
    :cond_0
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    .line 2110
    aput-object v1, v2, v3

    .line 2111
    add-int/lit8 v3, v3, 0x1

    .line 2112
    .end local v5    # "key":Ljava/lang/String;
    goto :goto_0

    .line 2113
    :cond_1
    invoke-virtual {p2, v2}, Lorg/codeaurora/ims/CallDetails;->setExtras([Ljava/lang/String;)V

    .line 2114
    .end local v1    # "extraString":Ljava/lang/String;
    .end local v2    # "extras":[Ljava/lang/String;
    .end local v3    # "i":I
    goto :goto_2

    .line 2115
    :cond_2
    const-string v1, "No extras in ImsCallProfile to map into CallDetails."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2117
    :goto_2
    return-void
.end method

.method private failDialRequest(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 2077
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2078
    .local v0, "newMsg":Landroid/os/Message;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "Dial Failed"

    invoke-direct {v1, v2, p1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2080
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2081
    return-void
.end method

.method public static getLineInfo(Landroid/telephony/ims/ImsCallProfile;)Lorg/codeaurora/ims/MultiIdentityLineInfo;
    .locals 3
    .param p0, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1948
    if-nez p0, :cond_0

    .line 1949
    invoke-static {}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getDefaultLine()Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v0

    return-object v0

    .line 1951
    :cond_0
    const-string v0, "originatingNumber"

    .line 1952
    invoke-virtual {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1953
    .local v0, "originatingNumber":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1956
    :cond_1
    const-string v1, "lineType"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v1

    .line 1958
    .local v1, "callType":I
    new-instance v2, Lorg/codeaurora/ims/MultiIdentityLineInfo;

    invoke-direct {v2, v0, v1}, Lorg/codeaurora/ims/MultiIdentityLineInfo;-><init>(Ljava/lang/String;I)V

    return-object v2

    .line 1954
    .end local v1    # "callType":I
    :cond_2
    :goto_0
    invoke-static {}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getDefaultLine()Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v1

    return-object v1
.end method

.method private getMtSuppSvcCode()I
    .locals 1

    .line 817
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mMtSuppSvcCode:I

    return v0
.end method

.method private getRadioTechFromCallMode(I)I
    .locals 1
    .param p1, "callMode"    # I

    .line 1712
    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1721
    const/4 v0, 0x0

    goto :goto_0

    .line 1718
    :pswitch_0
    const/16 v0, 0x12

    .line 1719
    .local v0, "radioTech":I
    goto :goto_0

    .line 1714
    .end local v0    # "radioTech":I
    :cond_0
    const/16 v0, 0xe

    .line 1715
    .restart local v0    # "radioTech":I
    nop

    .line 1721
    :goto_0
    nop

    .line 1723
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getResBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "strResName"    # Ljava/lang/String;
    .param p2, "strPackage"    # Ljava/lang/String;

    .line 2627
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 2629
    .local v1, "resCtx":Landroid/content/Context;
    if-nez v1, :cond_0

    return v0

    .line 2630
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2631
    .local v2, "res":Landroid/content/res/Resources;
    if-nez v2, :cond_1

    return v0

    .line 2632
    :cond_1
    const-string v3, "bool"

    invoke-virtual {v2, p1, v3, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2633
    .local v3, "resID":I
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    .line 2634
    .end local v1    # "resCtx":Landroid/content/Context;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "resID":I
    :catch_0
    move-exception v1

    .line 2635
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2637
    .end local v1    # "err":Ljava/lang/Exception;
    return v0
.end method

.method private getRestrictCause(I[Lorg/codeaurora/ims/ServiceStatus;)I
    .locals 6
    .param p1, "srvType"    # I
    .param p2, "ability"    # [Lorg/codeaurora/ims/ServiceStatus;

    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, "cause":I
    if-eqz p2, :cond_1

    .line 409
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p2, v3

    .line 410
    .local v4, "srv":Lorg/codeaurora/ims/ServiceStatus;
    if-eqz v4, :cond_0

    iget v5, v4, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v5, p1, :cond_0

    iget-object v5, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v5, v5

    if-lez v5, :cond_0

    .line 412
    iget-object v1, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v1, v1, v2

    iget v0, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 413
    goto :goto_1

    .line 409
    .end local v4    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 417
    :cond_1
    :goto_1
    return v0
.end method

.method private getRttMode(I[Lorg/codeaurora/ims/ServiceStatus;)I
    .locals 5
    .param p1, "callType"    # I
    .param p2, "list"    # [Lorg/codeaurora/ims/ServiceStatus;

    .line 2827
    const/4 v0, 0x0

    .line 2828
    .local v0, "mode":I
    if-eqz p2, :cond_1

    .line 2829
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    .line 2830
    .local v3, "srv":Lorg/codeaurora/ims/ServiceStatus;
    if-eqz v3, :cond_0

    iget v4, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v4, p1, :cond_0

    .line 2831
    iget v0, v3, Lorg/codeaurora/ims/ServiceStatus;->rttMode:I

    .line 2832
    goto :goto_1

    .line 2829
    .end local v3    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2836
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: getRttMode rtt mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2837
    return v0
.end method

.method private getSubId()I
    .locals 2

    .line 225
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    return v0
.end method

.method private getSuppSvcErrorMessage(I)Ljava/lang/String;
    .locals 2
    .param p1, "errorCode"    # I

    .line 2568
    packed-switch p1, :pswitch_data_0

    .line 2577
    const v0, 0x7f040006

    goto :goto_0

    .line 2573
    :pswitch_0
    const v0, 0x7f040008

    .line 2574
    .local v0, "resId":I
    goto :goto_0

    .line 2570
    .end local v0    # "resId":I
    :pswitch_1
    const v0, 0x7f040007

    .line 2571
    .restart local v0    # "resId":I
    nop

    .line 2577
    :goto_0
    nop

    .line 2580
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hasCauseCodeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 2
    .param p0, "dc"    # Lorg/codeaurora/ims/DriverCallIms;
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 1920
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private inviteParticipant(Ljava/lang/String;)V
    .locals 4
    .param p1, "participant"    # Ljava/lang/String;

    .line 2422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inviteParticipant participant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2423
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 2424
    const/16 v2, 0x8

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2423
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->addParticipant(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Landroid/os/Message;)V

    .line 2425
    return-void
.end method

.method private isCallMarkedUnwanted()Z
    .locals 3

    .line 2220
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2221
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {v0}, Lorg/codeaurora/ims/DriverCallIms;->getVerstatInfo()Lorg/codeaurora/ims/VerstatInfo;

    move-result-object v0

    .line 2222
    .local v0, "verstatInfo":Lorg/codeaurora/ims/VerstatInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/codeaurora/ims/VerstatInfo;->canMarkUnwantedCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2223
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->hasUserMarkedCallUnwanted()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    .line 2222
    :cond_1
    return v1
.end method

.method private isCarrierOneDial(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 1
    .param p1, "details"    # Lorg/codeaurora/ims/CallDetails;

    .line 2071
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 2072
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithDir(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2073
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateLowBatteryStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2071
    :goto_0
    return v0
.end method

.method private isConfigEnabled(I)Z
    .locals 1
    .param p1, "resId"    # I

    .line 2703
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private isImsCallSessionAlive()Z
    .locals 2

    .line 1217
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLowBatteryVideoCall()Z
    .locals 1

    .line 2262
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isMultiEndpointFailCause(I)Z
    .locals 1
    .param p1, "code"    # I

    .line 645
    const/16 v0, 0x3f6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3f7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3f8

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isRttSupported()Z
    .locals 4

    .line 229
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 230
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 231
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    .line 232
    .local v1, "b":Landroid/os/PersistableBundle;
    const/4 v2, 0x0

    .line 233
    .local v2, "isRttSupported":Z
    if-eqz v0, :cond_0

    .line 234
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getSubId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 236
    :cond_0
    if-eqz v1, :cond_1

    .line 237
    const-string v3, "rtt_supported_bool"

    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 240
    :cond_1
    return v2
.end method

.method static isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z
    .locals 5
    .param p0, "srvType"    # I
    .param p1, "ability"    # [Lorg/codeaurora/ims/ServiceStatus;

    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, "allowed":Z
    if-eqz p1, :cond_2

    .line 387
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 388
    .local v3, "srv":Lorg/codeaurora/ims/ServiceStatus;
    if-eqz v3, :cond_1

    iget v4, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v4, p0, :cond_1

    .line 389
    iget v1, v3, Lorg/codeaurora/ims/ServiceStatus;->status:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, v3, Lorg/codeaurora/ims/ServiceStatus;->status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 391
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 387
    .end local v3    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    :cond_2
    :goto_1
    return v0
.end method

.method private isSuppSvcToastMsgEnabled()Z
    .locals 5

    .line 2552
    const/4 v0, 0x0

    .line 2555
    .local v0, "SUPP_SVC_TOAST_CONFIG_DISABLED":I
    const/4 v1, 0x1

    .line 2557
    .local v1, "SUPP_SVC_TOAST_CONFIG_ENABLED":I
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 2558
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call.toast.supp_svc_fail"

    .line 2557
    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2560
    .local v2, "toastMsgEnabled":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    return v3
.end method

.method private isTerminateLowBatteryCall()Z
    .locals 3

    .line 2247
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    if-eqz v0, :cond_2

    .line 2248
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 2254
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1

    .line 2250
    :cond_2
    :goto_0
    return v1
.end method

.method private static mapAudioCodecFromExtras(Ljava/lang/String;)I
    .locals 4
    .param p0, "codec"    # Ljava/lang/String;

    .line 1607
    const/4 v0, 0x0

    .line 1608
    .local v0, "audioQuality":I
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 1609
    return v1

    .line 1611
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "GSM_HR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "GSM_FR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "G711AB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "EVS_WB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "EVS_NB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "EVS_FB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "EVRC_B"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "AMR_WB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "AMR_NB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "GSM_EFR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "QCELP13K"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "G711U"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_c
    const-string v1, "G711A"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    goto :goto_1

    :sswitch_d
    const-string v1, "G729"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xf

    goto :goto_1

    :sswitch_e
    const-string v1, "G723"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_f
    const-string v1, "G722"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xd

    goto :goto_1

    :sswitch_10
    const-string v1, "EVRC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_11
    const-string v1, "EVS_SWB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x12

    goto :goto_1

    :sswitch_12
    const-string v1, "EVRC_WB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_13
    const-string v1, "EVRC_NW"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 1673
    const-class v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported codec "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1670
    :pswitch_0
    const/16 v0, 0x14

    .line 1671
    goto :goto_2

    .line 1667
    :pswitch_1
    const/16 v0, 0x13

    .line 1668
    goto :goto_2

    .line 1664
    :pswitch_2
    const/16 v0, 0x12

    .line 1665
    goto :goto_2

    .line 1661
    :pswitch_3
    const/16 v0, 0x11

    .line 1662
    goto :goto_2

    .line 1658
    :pswitch_4
    const/16 v0, 0x10

    .line 1659
    goto :goto_2

    .line 1655
    :pswitch_5
    const/16 v0, 0xf

    .line 1656
    goto :goto_2

    .line 1652
    :pswitch_6
    const/16 v0, 0xe

    .line 1653
    goto :goto_2

    .line 1649
    :pswitch_7
    const/16 v0, 0xd

    .line 1650
    goto :goto_2

    .line 1646
    :pswitch_8
    const/16 v0, 0xc

    .line 1647
    goto :goto_2

    .line 1643
    :pswitch_9
    const/16 v0, 0xb

    .line 1644
    goto :goto_2

    .line 1640
    :pswitch_a
    const/16 v0, 0xa

    .line 1641
    goto :goto_2

    .line 1637
    :pswitch_b
    const/16 v0, 0x9

    .line 1638
    goto :goto_2

    .line 1634
    :pswitch_c
    const/16 v0, 0x8

    .line 1635
    goto :goto_2

    .line 1631
    :pswitch_d
    const/4 v0, 0x2

    .line 1632
    goto :goto_2

    .line 1628
    :pswitch_e
    const/4 v0, 0x1

    .line 1629
    goto :goto_2

    .line 1625
    :pswitch_f
    const/4 v0, 0x7

    .line 1626
    goto :goto_2

    .line 1622
    :pswitch_10
    const/4 v0, 0x6

    .line 1623
    goto :goto_2

    .line 1619
    :pswitch_11
    const/4 v0, 0x5

    .line 1620
    goto :goto_2

    .line 1616
    :pswitch_12
    const/4 v0, 0x4

    .line 1617
    goto :goto_2

    .line 1613
    :pswitch_13
    const/4 v0, 0x3

    .line 1614
    nop

    .line 1676
    :goto_2
    const-class v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioQuality is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x268dd77a -> :sswitch_13
        -0x268dd678 -> :sswitch_12
        -0x2673319f -> :sswitch_11
        0x20aaa2 -> :sswitch_10
        0x211b10 -> :sswitch_f
        0x211b11 -> :sswitch_e
        0x211b17 -> :sswitch_d
        0x4024351 -> :sswitch_c
        0x4024365 -> :sswitch_b
        0x30932dd2 -> :sswitch_a
        0x3de5f773 -> :sswitch_9
        0x734ec6ed -> :sswitch_8
        0x734ec804 -> :sswitch_7
        0x7aa095e5 -> :sswitch_6
        0x7aa17059 -> :sswitch_5
        0x7aa17151 -> :sswitch_4
        0x7aa17268 -> :sswitch_3
        0x7c462711 -> :sswitch_2
        0x7dde20ea -> :sswitch_1
        0x7dde2128 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private mapCallTypeFromProfile(I)I
    .locals 1
    .param p1, "callType"    # I

    .line 1686
    const/4 v0, 0x0

    .line 1687
    .local v0, "type":I
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1704
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 1701
    :pswitch_2
    const/4 v0, 0x2

    .line 1702
    goto :goto_0

    .line 1698
    :pswitch_3
    const/4 v0, 0x1

    .line 1699
    goto :goto_0

    .line 1695
    :pswitch_4
    const/4 v0, 0x3

    .line 1696
    goto :goto_0

    .line 1692
    :pswitch_5
    const/4 v0, 0x0

    .line 1693
    goto :goto_0

    .line 1689
    :pswitch_6
    const/16 v0, 0xa

    .line 1690
    nop

    .line 1707
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private mapResponseToMode(Z)I
    .locals 0
    .param p1, "response"    # Z

    .line 2817
    return p1
.end method

.method private mapRttModeFromProfile(I)I
    .locals 3
    .param p1, "mode"    # I

    .line 2797
    const/4 v0, 0x0

    .line 2798
    .local v0, "rttMode":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2803
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2800
    :pswitch_1
    const/4 v0, 0x0

    .line 2801
    nop

    .line 2806
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: mapRttModeFromProfile mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2807
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private maybeCreateVideoProvider(Z)V
    .locals 3
    .param p1, "isVideoCallingEnabled"    # Z

    .line 212
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isRttSupported(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 213
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isRttSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-nez v0, :cond_1

    .line 214
    new-instance v0, Lorg/codeaurora/ims/ImsCallModification;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v0, p0, v1, v2}, Lorg/codeaurora/ims/ImsCallModification;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    .line 217
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-nez v0, :cond_2

    .line 218
    const-string v0, "maybeCreateVideoProvider: Creating VideoCallProvider"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    new-instance v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/ImsCallModification;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    .line 220
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;)V

    .line 222
    :cond_2
    return-void
.end method

.method private maybeDisplaySuppServiceErrorMsg(Ljava/lang/String;Lorg/codeaurora/ims/ImsRilException;)V
    .locals 3
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "ex"    # Lorg/codeaurora/ims/ImsRilException;

    .line 2539
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSuppSvcToastMsgEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->toUiErrorCode(Lorg/codeaurora/ims/ImsRilException;)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getSuppSvcErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2541
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2543
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private maybeNotifyCallTypeChanging(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 4
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 705
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    return-void

    .line 708
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsCallUtils;->hasCallTypeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 709
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 710
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;

    .line 711
    .local v2, "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-interface {v2, p0, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;->onCallTypeChanging(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V

    .line 712
    .end local v2    # "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    goto :goto_0

    .line 713
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 715
    :cond_2
    :goto_1
    return-void
.end method

.method private maybeOverrideReason(I)I
    .locals 2
    .param p1, "reason"    # I

    .line 2227
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCallMarkedUnwanted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2228
    const/16 p1, 0x16d

    .line 2229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Overriden Reason : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2231
    :cond_0
    return p1
.end method

.method private maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 2
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 662
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 664
    .local v0, "areStatesSame":Z
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;Z)Z

    move-result v1

    return v1
.end method

.method private maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;Z)Z
    .locals 5
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;
    .param p2, "areStatesSame"    # Z

    .line 651
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 653
    .local v0, "isCallNotEnded":Z
    :goto_0
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call details updated. currentCallDetails= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v4, v4, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to newCallDetails= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 656
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, v4}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 658
    :cond_1
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    move v2, v3

    nop

    :cond_2
    return v2
.end method

.method private maybeUpdateLowBatteryStatus()Z
    .locals 4

    .line 686
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 687
    const-string v0, "merge is in progress so ignore low battery update"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    return v1

    .line 691
    :cond_0
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isLowBattery()Z

    move-result v0

    .line 692
    .local v0, "isLowBattery":Z
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    .line 693
    .local v1, "hasChanged":Z
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maybeUpdateLowBatteryStatus isLowBattery: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsLowBattery: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    if-eqz v1, :cond_2

    .line 697
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    .line 698
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "LowBattery"

    invoke-virtual {v2, v3, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 701
    :cond_2
    return v1
.end method

.method private maybeUpdateVoWifiCallQualityExtra(IZ)V
    .locals 2
    .param p1, "quality"    # I
    .param p2, "canNotify"    # Z

    .line 2711
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isVoWiFiCallQualityEnabled(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2712
    return-void

    .line 2715
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 2716
    return-void

    .line 2719
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maybeUpdateVoWifiCallQualityExtra Quality : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2720
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "VoWiFiCallQuality"

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2723
    if-eqz p2, :cond_2

    .line 2724
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    .line 2726
    :cond_2
    return-void
.end method

.method private notifySessionClosed()V
    .locals 3

    .line 338
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 339
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;

    .line 340
    .local v2, "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    invoke-interface {v2, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;->onClosed(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 341
    .end local v2    # "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    goto :goto_0

    .line 342
    :cond_0
    monitor-exit v0

    .line 343
    return-void

    .line 342
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifySessionDisconnected()V
    .locals 3

    .line 330
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 331
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;

    .line 332
    .local v2, "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    invoke-interface {v2, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;->onDisconnected(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 333
    .end local v2    # "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    goto :goto_0

    .line 334
    :cond_0
    monitor-exit v0

    .line 335
    return-void

    .line 334
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyVoiceInfoChanged(I)V
    .locals 3
    .param p1, "message"    # I

    .line 2902
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCallActive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2908
    :cond_0
    const/4 v0, 0x0

    .line 2910
    .local v0, "property":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 2911
    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallUtils;->setBits(II)I

    move-result v0

    goto :goto_0

    .line 2912
    :cond_1
    if-nez p1, :cond_2

    .line 2913
    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallUtils;->clearBits(II)I

    move-result v0

    .line 2916
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyVoiceInfoChanged: Call session property = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2917
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProperty:I

    if-ne v1, v0, :cond_3

    .line 2918
    return-void

    .line 2920
    :cond_3
    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProperty:I

    .line 2921
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProperty:I

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionPropertyChanged(I)V

    .line 2922
    return-void

    .line 2903
    .end local v0    # "property":I
    :cond_4
    :goto_1
    const-string v0, "notifyVoiceInfoChanged Session invalid/not active/mCallbackHandler null Return"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2905
    return-void
.end method

.method private parseErrorCode(Ljava/lang/String;)I
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;

    .line 1017
    const-string v0, "CD-04"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1018
    const/16 v0, 0x44c

    return v0

    .line 1020
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private processAddParticipantResponse(Z)V
    .locals 2
    .param p1, "success"    # Z

    .line 2388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processAddParticipantResponse: success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " pending = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    .line 2389
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2388
    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2390
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2391
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2392
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->processNextParticipant()V

    .line 2394
    :cond_0
    return-void
.end method

.method private processAddParticipantsList(Ljava/lang/String;)V
    .locals 7
    .param p1, "dialString"    # Ljava/lang/String;

    .line 2362
    const/4 v0, 0x0

    .line 2363
    .local v0, "initAdding":Z
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2364
    .local v1, "participantsArr":[Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    array-length v3, v1

    .line 2365
    .local v3, "numOfParticipants":I
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processAddParticipantsList: no of particpants = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pending = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    .line 2366
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2365
    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2367
    if-lez v3, :cond_3

    .line 2368
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 2370
    const/4 v0, 0x1

    .line 2372
    :cond_1
    array-length v4, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v1, v2

    .line 2373
    .local v5, "participant":Ljava/lang/String;
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2372
    .end local v5    # "participant":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2375
    :cond_2
    if-eqz v0, :cond_3

    .line 2376
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->processNextParticipant()V

    .line 2379
    :cond_3
    return-void
.end method

.method private processNextParticipant()V
    .locals 2

    .line 2382
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2383
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->inviteParticipant(Ljava/lang/String;)V

    .line 2385
    :cond_0
    return-void
.end method

.method private setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 4
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 726
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance v1, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v1, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 728
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    const-string v3, "Codec"

    .line 729
    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 728
    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapAudioCodecFromExtras(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 731
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setLocalProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 732
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRttMode(I[Lorg/codeaurora/ims/ServiceStatus;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 735
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v0, :cond_2

    .line 736
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setRemoteProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 737
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-eqz v0, :cond_2

    .line 738
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance v1, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v1, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 739
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 740
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 741
    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 739
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRestrictCause(I[Lorg/codeaurora/ims/ServiceStatus;)I

    move-result v1

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 743
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRttMode(I[Lorg/codeaurora/ims/ServiceStatus;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 747
    :cond_2
    return-void
.end method

.method private setLocalProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 6
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 750
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v0

    .line 752
    .local v0, "isLocalVideoServiceAllowed":Z
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v2

    .line 755
    .local v2, "isLocalVoiceServiceAllowed":Z
    iget v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallRemoveModifyCallCapability(ILandroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v4, v5, :cond_0

    .line 762
    move v0, v3

    move v2, v3

    .line 765
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    if-eqz v3, :cond_1

    .line 767
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v1, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_0

    .line 768
    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    if-eqz v1, :cond_2

    .line 770
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v3, 0x4

    iput v3, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_0

    .line 771
    :cond_2
    if-eqz v2, :cond_3

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    if-eqz v1, :cond_3

    .line 773
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v3, 0x2

    iput v3, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_0

    .line 775
    :cond_3
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v3, 0x7

    iput v3, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 777
    :goto_0
    return-void
.end method

.method private setMtSuppSvcCode(I)V
    .locals 0
    .param p1, "code"    # I

    .line 813
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mMtSuppSvcCode:I

    .line 814
    return-void
.end method

.method private setRemoteProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 6
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 780
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v0

    .line 782
    .local v0, "isRemoteVideoServiceAllowed":Z
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v2

    .line 785
    .local v2, "isRemoteVoiceServiceAllowed":Z
    iget v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallRemoveModifyCallCapability(ILandroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_0

    .line 786
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMtSuppSvcCode()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 787
    move v0, v3

    move v2, v3

    .line 790
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 791
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v1, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_0

    .line 792
    :cond_1
    if-eqz v0, :cond_2

    .line 793
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v3, 0x4

    iput v3, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_0

    .line 794
    :cond_2
    if-eqz v2, :cond_3

    .line 795
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v5, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_0

    .line 797
    :cond_3
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v3, 0x7

    iput v3, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 799
    :goto_0
    return-void
.end method

.method private startAlert()V
    .locals 2

    .line 2651
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mWifiAlertHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2652
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$1;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mWifiAlertHandler:Landroid/os/Handler;

    .line 2676
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mWifiAlertHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2677
    return-void
.end method

.method private startBeepForAlert()V
    .locals 3

    .line 2680
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl$2;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$2;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 2697
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl$2;->start()V

    .line 2698
    const-string v0, "Due to network conditions, the call may be dropped"

    .line 2699
    .local v0, "TOAST_AFTER_DROPCALL":Ljava/lang/String;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2700
    return-void
.end method

.method public static toImsCallProfile(Lorg/codeaurora/ims/MultiIdentityLineInfo;Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;
    .locals 3
    .param p0, "line"    # Lorg/codeaurora/ims/MultiIdentityLineInfo;
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1905
    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 1907
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 1908
    .local v0, "msisdn":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1910
    :cond_1
    const-string v1, "terminatingNumber"

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    const-string v1, "lineType"

    invoke-virtual {p0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getLineType()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1912
    return-object p1

    .line 1908
    :cond_2
    :goto_0
    return-object p1

    .line 1905
    .end local v0    # "msisdn":Ljava/lang/String;
    :cond_3
    :goto_1
    return-object p1
.end method

.method private static toImsCallProfile(Lorg/codeaurora/ims/VerstatInfo;Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;
    .locals 2
    .param p0, "verstatInfo"    # Lorg/codeaurora/ims/VerstatInfo;
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1885
    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 1889
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/VerstatInfo;->canMarkUnwantedCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1890
    const-string v0, "CanMarkUnwantedCall"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1894
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/VerstatInfo;->getVerstatVerificationStatus()I

    move-result v0

    .line 1895
    .local v0, "verstatVerificationStatus":I
    if-eqz v0, :cond_2

    .line 1896
    const-string v1, "VerstatVerificationStatus"

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1900
    :cond_2
    return-object p1

    .line 1886
    .end local v0    # "verstatVerificationStatus":I
    :cond_3
    :goto_0
    return-object p1
.end method

.method private updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 7
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 1731
    if-nez p1, :cond_0

    .line 1732
    const-string v0, "updateImsCallProfile called with dc null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1733
    return-void

    .line 1736
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v0, :cond_1

    .line 1737
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1741
    :cond_1
    const/4 v0, 0x0

    .line 1742
    .local v0, "callMode":I
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v1, v1, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-eqz v1, :cond_4

    .line 1744
    move v1, v2

    .local v1, "i":I
    :goto_0
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v3, v3, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 1745
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v3, v3, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v3, v3, v1

    .line 1746
    .local v3, "servStatus":Lorg/codeaurora/ims/ServiceStatus;
    iget v4, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v5, v5, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-ne v4, v5, :cond_2

    .line 1747
    iget-object v4, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v4, v4, v2

    iget v0, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 1750
    goto :goto_1

    .line 1744
    .end local v3    # "servStatus":Lorg/codeaurora/ims/ServiceStatus;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1753
    .end local v1    # "i":I
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "CallRadioTech"

    .line 1754
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRadioTechFromCallMode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1753
    invoke-virtual {v1, v3, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    :cond_4
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "oi"

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "cna"

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "oir"

    iget v4, p1, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    .line 1760
    invoke-static {v4}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v4

    .line 1759
    invoke-virtual {v1, v3, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1761
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "cnap"

    iget v4, p1, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    .line 1762
    invoke-static {v4}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v4

    .line 1761
    invoke-virtual {v1, v3, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1763
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "CallSubstate"

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v4, v4, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    invoke-virtual {v1, v3, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1765
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "CallEncryption"

    iget-boolean v4, p1, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    invoke-virtual {v1, v3, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateImsCallProfile :: Packing encryption="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p1, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " in mCallProfile\'s extras."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1769
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1770
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v3, "CallHistoryInfo"

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    .line 1772
    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractHistoryInfoDetails(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1770
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1775
    :cond_5
    iget v1, p1, Lorg/codeaurora/ims/DriverCallIms;->mEctMask:I

    if-eqz v1, :cond_6

    .line 1776
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "transferType"

    iget v4, p1, Lorg/codeaurora/ims/DriverCallIms;->mEctMask:I

    invoke-virtual {v1, v3, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1785
    :cond_6
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->isConfSupportIndicated()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    .line 1786
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "ConfSupportInd"

    .line 1788
    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v5, v5, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v5}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1789
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->isVideoConfSupported()Z

    move-result v5

    goto :goto_2

    .line 1786
    :cond_7
    move v5, v3

    :goto_2
    invoke-virtual {v1, v4, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1792
    :cond_8
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-static {v1, p1}, Lorg/codeaurora/ims/ImsCallUtils;->hasCallTypeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-static {v1, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->hasCauseCodeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1793
    :cond_9
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "SessionModificationCause"

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v5, v5, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    invoke-virtual {v1, v4, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1797
    :cond_a
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateLowBatteryStatus()Z

    .line 1798
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "phoneId"

    iget v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    invoke-virtual {v1, v4, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1800
    const-string v1, "ro.container.security"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1801
    .local v1, "isSecuritySystem":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateImsCallProfile : isSecuritySystem="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1802
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v4, v4, Lorg/codeaurora/ims/CallDetails;->call_type:I

    const/16 v5, 0xa

    const/4 v6, -0x1

    if-eq v4, v5, :cond_e

    const/4 v5, 0x2

    packed-switch v4, :pswitch_data_0

    goto :goto_6

    .line 1842
    :pswitch_0
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v4, v4, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v2, v4, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_6

    .line 1814
    :pswitch_1
    if-eqz v1, :cond_b

    .line 1815
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v5, v4, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_3

    .line 1817
    :cond_b
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v5, 0x4

    iput v5, v4, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1819
    :goto_3
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v4, v4, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v5, 0x3

    iput v5, v4, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1821
    goto :goto_6

    .line 1832
    :pswitch_2
    if-eqz v1, :cond_c

    .line 1833
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v5, v4, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_4

    .line 1835
    :cond_c
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v5, 0x6

    iput v5, v4, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1837
    :goto_4
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v4, v4, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v3, v4, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1839
    goto :goto_6

    .line 1823
    :pswitch_3
    if-eqz v1, :cond_d

    .line 1824
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v5, v4, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_5

    .line 1826
    :cond_d
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v6, 0x5

    iput v6, v4, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1828
    :goto_5
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v4, v4, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v5, v4, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1830
    goto :goto_6

    .line 1809
    :pswitch_4
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v5, v4, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1810
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v4, v4, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v6, v4, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1812
    goto :goto_6

    .line 1804
    :cond_e
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v3, v4, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1805
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v4, v4, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v6, v4, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1807
    nop

    .line 1846
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateImsCallProfile : dc.callDetails.call_type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v5, v5, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "mCallProfile.mCallType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v5, v5, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1850
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v4, v4, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    packed-switch v4, :pswitch_data_1

    goto :goto_7

    .line 1855
    :pswitch_5
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v4, v4, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v3, v4, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    goto :goto_7

    .line 1852
    :pswitch_6
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v2, v3, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 1853
    nop

    .line 1868
    :goto_7
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRadioTechFromCallMode(I)I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_f

    .line 1869
    iget v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mVoWifiQuality:I

    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateVoWifiCallQualityExtra(IZ)V

    .line 1873
    :cond_f
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getVerstatInfo()Lorg/codeaurora/ims/VerstatInfo;

    move-result-object v2

    .line 1874
    .local v2, "verstatInfo":Lorg/codeaurora/ims/VerstatInfo;
    if-eqz v2, :cond_10

    .line 1875
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->toImsCallProfile(Lorg/codeaurora/ims/VerstatInfo;Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1876
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateImsCallProfile :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1880
    :cond_10
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->mMtMultiLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-static {v3, v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->toImsCallProfile(Lorg/codeaurora/ims/MultiIdentityLineInfo;Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1881
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private updateLocalDc(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 4
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, "hasChanged":Z
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v1, :cond_0

    .line 428
    new-instance v1, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v1, p1}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/DriverCallIms;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 429
    const/4 v0, 0x1

    goto :goto_1

    .line 431
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/DriverCallIms;->update(Lorg/codeaurora/ims/DriverCallIms;)I

    move-result v1

    .line 434
    .local v1, "changedProperties":I
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v2, :cond_2

    .line 435
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_2

    .line 436
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz v2, :cond_1

    .line 437
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v3, v3, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMultipartyStateChanged(Z)V

    .line 439
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v2, v2, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz v2, :cond_2

    .line 442
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateMergeStatus(I)V

    .line 447
    :cond_2
    if-eqz v1, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 449
    .end local v1    # "changedProperties":I
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLocalDc is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    return v0
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 4
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 2158
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2160
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RTT: rttMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapRttModeFromProfile(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2161
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2162
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v2

    iget v3, p2, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapRttModeFromProfile(I)I

    move-result v3

    .line 2161
    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->acceptCall(Landroid/os/Message;II)V

    .line 2163
    return-void
.end method

.method public addListener(Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;

    .line 284
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 286
    :cond_0
    if-eqz p1, :cond_2

    .line 292
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 293
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 294
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate listener, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    :goto_0
    monitor-exit v0

    .line 299
    return-void

    .line 298
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 287
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canTransferToId()Z
    .locals 2

    .line 1478
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1479
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v0, :cond_1

    .line 1480
    return v1

    .line 1482
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget v0, v0, Lorg/codeaurora/ims/DriverCallIms;->mEctMask:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1
.end method

.method public canTransferToNumber()Z
    .locals 3

    .line 1463
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1464
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v0, :cond_1

    .line 1465
    return v1

    .line 1469
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget v0, v0, Lorg/codeaurora/ims/DriverCallIms;->mEctMask:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method public close()V
    .locals 2

    .line 1275
    const-string v0, "Close!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1276
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1277
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1279
    :cond_0
    return-void
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 4
    .param p1, "deflectNumber"    # Ljava/lang/String;

    .line 2199
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2201
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x10

    .line 2202
    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2201
    invoke-virtual {v0, v1, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->deflectCall(ILjava/lang/String;Landroid/os/Message;)V

    .line 2203
    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;

    .line 2357
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2359
    :cond_0
    return-void
.end method

.method public getCallDomain()I
    .locals 2

    .line 1406
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    return v0

    .line 1408
    :cond_0
    const/4 v0, 0x3

    .line 1409
    .local v0, "callDomain":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v1, :cond_1

    .line 1410
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v1, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 1412
    :cond_1
    return v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .line 1287
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 1318
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1319
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getCallee()Ljava/lang/String;
    .locals 1

    .line 1435
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1436
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    return-object v0
.end method

.method public getConfInfo()Lorg/codeaurora/ims/parser/ConfInfo;
    .locals 1

    .line 2513
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2514
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    return-object v0
.end method

.method public getDcState()Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 1

    .line 1421
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1424
    :cond_0
    const-string v0, "Null mDc! Returning null!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1425
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDriverCallState()Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 1

    .line 1440
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1441
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0
.end method

.method getImsCallModification()Lorg/codeaurora/ims/ImsCallModification;
    .locals 1

    .line 380
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 381
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    return-object v0
.end method

.method public getImsVideoCallProviderImpl()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    .line 325
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 326
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    return-object v0
.end method

.method public getInternalCallType()I
    .locals 2

    .line 1394
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    return v0

    .line 1396
    :cond_0
    const/16 v0, 0xa

    .line 1397
    .local v0, "callType":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v1, :cond_1

    .line 1398
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    goto :goto_0

    .line 1399
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_2

    .line 1400
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->convertToInternalCallType(I)I

    move-result v0

    .line 1402
    :cond_2
    :goto_0
    return v0
.end method

.method public getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 3

    .line 1378
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1380
    :cond_0
    const/4 v0, 0x0

    .line 1381
    .local v0, "state":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_1

    .line 1382
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    goto :goto_0

    .line 1383
    :cond_1
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1384
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 1386
    :cond_2
    :goto_0
    return-object v0
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 1328
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1329
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getMediaId()I
    .locals 2

    .line 1297
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 1298
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v1, v0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    nop

    :cond_1
    return v1
.end method

.method public getPhoneId()I
    .locals 1

    .line 1390
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1348
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1350
    :cond_0
    const/4 v0, 0x0

    .line 1352
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_1

    .line 1353
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1355
    :cond_1
    const-string v1, "Call Profile null! "

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1357
    :goto_0
    return-object v0
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 1338
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1339
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 1367
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1368
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    return v0
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 2

    .line 2477
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2479
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-nez v0, :cond_1

    .line 2480
    const-string v0, "getVideoCallProvider: Video call provider is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2481
    return-object v1

    .line 2483
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->getInterface()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    return-object v0
.end method

.method public handleClearCodeNotify(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 3
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 2925
    invoke-static {}, Lcom/zte/PlatformConfig;->isMxtelProject()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleClearCodeNotify dc.mCallFailReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lorg/codeaurora/ims/DriverCallIms;->mCallFailReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2927
    const/4 v0, 0x0

    .line 2928
    .local v0, "clearCodeWord":Ljava/lang/String;
    iget v1, p1, Lorg/codeaurora/ims/DriverCallIms;->mCallFailReason:I

    const/16 v2, 0x204

    if-eq v1, v2, :cond_1

    const/16 v2, 0x216

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    .line 2936
    :pswitch_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2937
    goto :goto_0

    .line 2933
    :pswitch_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2934
    goto :goto_0

    .line 2948
    :pswitch_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2949
    goto :goto_0

    .line 2945
    :pswitch_3
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2946
    goto :goto_0

    .line 2942
    :pswitch_4
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2943
    goto :goto_0

    .line 2939
    :pswitch_5
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2940
    goto :goto_0

    .line 2951
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2952
    goto :goto_0

    .line 2930
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2931
    nop

    .line 2956
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2957
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2961
    .end local v0    # "clearCodeWord":Ljava/lang/String;
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x20e
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x235
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleHandover(IIII[BLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "hoType"    # I
    .param p2, "srcTech"    # I
    .param p3, "targetTech"    # I
    .param p4, "extraType"    # I
    .param p5, "extraInfo"    # [B
    .param p6, "errorCode"    # Ljava/lang/String;
    .param p7, "errorMessage"    # Ljava/lang/String;

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hoType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "srcTech: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " targetTech: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 969
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 971
    :cond_0
    invoke-direct {p0, p6}, Lorg/codeaurora/ims/ImsCallSessionImpl;->parseErrorCode(Ljava/lang/String;)I

    move-result v0

    .line 973
    .local v0, "error":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1009
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled hoType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1006
    :pswitch_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1, p2, p3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMayHandover(II)V

    .line 1007
    goto :goto_0

    .line 1001
    :pswitch_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->alertForHandoverFailed()V

    .line 1002
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v0, v2, p7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, p2, p3, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1004
    goto :goto_0

    .line 991
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HO Failure for WWAN->IWLAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 992
    if-ne p4, v1, :cond_1

    .line 993
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "handoverInfo"

    invoke-virtual {v3, v4, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 996
    :cond_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->alertForHandoverFailed()V

    .line 997
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v0, v2, p7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, p2, p3, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 999
    goto :goto_0

    .line 977
    :pswitch_3
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v0, v2, p7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, p2, p3, v4}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 983
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRadioTechFromCallMode(I)I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_2

    .line 984
    invoke-direct {p0, p3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRadioTechFromCallMode(I)I

    move-result v3

    const/16 v4, 0xe

    if-ne v3, v4, :cond_2

    .line 986
    invoke-direct {p0, v2, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateVoWifiCallQualityExtra(IZ)V

    goto :goto_0

    .line 975
    :pswitch_4
    nop

    .line 1011
    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleRetryErrorNotify(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 6
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 911
    const/4 v0, 0x0

    .line 912
    .local v0, "sipErrorCode":I
    iget v1, p1, Lorg/codeaurora/ims/DriverCallIms;->mCallFailReason:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 941
    :pswitch_1
    const/16 v0, 0x244

    .line 942
    goto :goto_0

    .line 938
    :pswitch_2
    const/16 v0, 0x201

    .line 939
    goto :goto_0

    .line 935
    :pswitch_3
    const/16 v0, 0x1f9

    .line 936
    goto :goto_0

    .line 932
    :pswitch_4
    const/16 v0, 0x1f7

    .line 933
    goto :goto_0

    .line 929
    :pswitch_5
    const/16 v0, 0x1f6

    .line 930
    goto :goto_0

    .line 926
    :pswitch_6
    const/16 v0, 0x1f5

    .line 927
    goto :goto_0

    .line 923
    :pswitch_7
    const/16 v0, 0x1f4

    .line 924
    goto :goto_0

    .line 920
    :pswitch_8
    const/16 v0, 0x1e0

    .line 921
    goto :goto_0

    .line 917
    :pswitch_9
    const/16 v0, 0x198

    .line 918
    goto :goto_0

    .line 914
    :pswitch_a
    const/16 v0, 0x193

    .line 915
    nop

    .line 946
    :goto_0
    if-eqz v0, :cond_0

    .line 947
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry Error Notify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdditionalCallInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 950
    .local v1, "additionalCallInfo":Ljava/lang/String;
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/CallDetails;->addExtra(Ljava/lang/String;)V

    .line 951
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "AdditionalCallInfo"

    invoke-virtual {v2, v3, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 954
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f030000

    .line 955
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 956
    .local v2, "displayCsRetryToast":Z
    if-eqz v2, :cond_0

    .line 957
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LTE HD voice is unavailable. 3G voice call will be connected.SIP Error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 959
    .local v3, "msg":Ljava/lang/String;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 962
    .end local v1    # "additionalCallInfo":Ljava/lang/String;
    .end local v2    # "displayCsRetryToast":Z
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x204
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public hasMediaIdValid()Z
    .locals 2

    .line 1308
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1309
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CallDetails;->hasMediaIdValid()Z

    move-result v1

    nop

    :cond_1
    return v1
.end method

.method public hasUserMarkedCallUnwanted()Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2210
    const/4 v0, 0x0

    .line 2211
    .local v0, "defaultVal":I
    const-string v1, "persist.vendor.radio.debug.mark_unwanted_call"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2213
    .local v1, "ret":I
    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 2300
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2302
    :cond_0
    const-string v0, "hold requested."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2303
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget v2, v2, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->hold(Landroid/os/Message;I)V

    .line 2304
    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 4
    .param p1, "participants"    # [Ljava/lang/String;

    .line 2404
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2406
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 2407
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2410
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inviteParticipants participants: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2411
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2412
    return-void

    .line 2408
    :cond_2
    :goto_0
    return-void
.end method

.method public isCallActive()Z
    .locals 3

    .line 2189
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2190
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public isConfInProgress()Z
    .locals 1

    .line 1929
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1930
    :cond_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    return v0
.end method

.method public isInCall()Z
    .locals 3

    .line 1491
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1493
    :cond_0
    const/4 v0, 0x0

    .line 1494
    .local v0, "isInCall":Z
    sget-object v1, Lorg/codeaurora/ims/ImsCallSessionImpl$3;->$SwitchMap$org$codeaurora$ims$DriverCallIms$State:[I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v2, v2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v2}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1501
    :pswitch_0
    const/4 v0, 0x1

    .line 1504
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isMultiparty()Z
    .locals 2

    .line 1450
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1451
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v0, :cond_1

    .line 1452
    return v1

    .line 1454
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v0, v0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    return v0
.end method

.method public isMultipartyCall()Z
    .locals 2

    .line 1416
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1417
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    nop

    :cond_1
    return v1
.end method

.method public isSessionValid()Z
    .locals 2

    .line 1205
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1206
    .local v0, "isValid":Z
    :goto_0
    if-nez v0, :cond_1

    .line 1207
    const-string v1, "Session is closed"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1209
    :cond_1
    return v0
.end method

.method public merge()V
    .locals 1

    .line 2326
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2329
    :cond_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-nez v0, :cond_1

    .line 2330
    const-string v0, "merge request is already in progress, ignore this merge request"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2331
    return-void

    .line 2336
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->sendConferenceRequest(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 2337
    return-void
.end method

.method public muteStateReporting()V
    .locals 2

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call session state reporting muted! session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    .line 456
    return-void
.end method

.method public notifyCallModifyInitiate(Lorg/codeaurora/ims/CallModify;)V
    .locals 3
    .param p1, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 361
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 363
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;

    .line 364
    .local v2, "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    invoke-interface {v2, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;->onCallModifyInitiated(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/CallModify;)V

    .line 365
    .end local v2    # "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    goto :goto_0

    .line 366
    :cond_1
    monitor-exit v0

    .line 367
    return-void

    .line 366
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyConfInfo([B)V
    .locals 2
    .param p1, "confInfoBytes"    # [B

    .line 2497
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2499
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/parser/ConfInfo;->updateConfXmlBytes([B)V

    .line 2500
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/ConfInfo;->getConfUriList()Landroid/telephony/ims/ImsConferenceState;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    .line 2501
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz v0, :cond_1

    .line 2502
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    .line 2504
    :cond_1
    return-void
.end method

.method public notifyReceivedRttMessage(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    .line 2858
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2862
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 2864
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2865
    const-string v1, "notifyReceivedRttMessage rtt msg null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2866
    return-void

    .line 2869
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-nez v1, :cond_2

    .line 2870
    const-string v1, "notifyReceivedRttMessage ListenerProxy null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2871
    return-void

    .line 2874
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: notifyReceivedRttMessage rttMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2875
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionRttMessageReceived(Ljava/lang/String;)V

    .line 2876
    return-void

    .line 2859
    .end local v0    # "message":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void
.end method

.method public notifyRttModifyRequest(Lorg/codeaurora/ims/CallDetails;)V
    .locals 3
    .param p1, "callDetails"    # Lorg/codeaurora/ims/CallDetails;

    .line 2842
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2844
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-nez v0, :cond_1

    .line 2845
    const-string v0, "RTT: notifyRttModifyRequest ListenerProxy null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2848
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RTT: notifyRttModifyRequest rttMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->getRttMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2850
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    .line 2851
    .local v0, "profile":Landroid/telephony/ims/ImsCallProfile;
    iget-object v1, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->getRttMode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 2853
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2854
    return-void
.end method

.method public notifyRttModifyResponse(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2880
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2882
    :cond_0
    const/4 v0, 0x2

    .line 2884
    .local v0, "status":I
    if-eqz p1, :cond_1

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 2885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: modify request exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2886
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->getUiErrorCode(Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0

    .line 2888
    :cond_1
    const/4 v0, 0x1

    .line 2891
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-nez v1, :cond_2

    .line 2892
    const-string v1, "notifyRttModifyResponse ListenerProxy null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2893
    return-void

    .line 2896
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: notifyRttModifyResponse status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2897
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionRttModifyResponseReceived(I)V

    .line 2898
    return-void
.end method

.method public notifyTtyModeChange(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TTY mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 900
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 902
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz v0, :cond_1

    .line 904
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTtyModeReceived(I)V

    goto :goto_0

    .line 906
    :cond_1
    const-string v0, "notifyTtyModeChange ListenerProxy null! "

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 908
    :goto_0
    return-void
.end method

.method public notifyUnsolCallModify(Lorg/codeaurora/ims/CallModify;)V
    .locals 4
    .param p1, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 346
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 349
    :try_start_0
    const-string v1, "ro.container.security"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 350
    .local v1, "isSecuritySystem":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUnsolCallModify : isSecuritySystem="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    if-eqz v1, :cond_1

    .line 352
    monitor-exit v0

    return-void

    .line 354
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;

    .line 355
    .local v3, "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    invoke-interface {v3, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;->onUnsolCallModify(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/CallModify;)V

    .line 356
    .end local v3    # "l":Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;
    goto :goto_0

    .line 357
    .end local v1    # "isSecuritySystem":Z
    :cond_2
    monitor-exit v0

    .line 358
    return-void

    .line 357
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V
    .locals 1
    .param p1, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 371
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-nez v0, :cond_0

    .line 372
    const-string v0, "onReceivedModifyCall: Ignoring session modification request."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallModification;->onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V

    .line 376
    return-void
.end method

.method public reject(I)V
    .locals 8
    .param p1, "reason"    # I

    .line 2172
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2174
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reject "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2177
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isLowBatteryVideoCall()Z

    move-result v0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCallTerminatedDueToLowBattery:Z

    .line 2178
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCallTerminatedDueToLowBattery:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 2179
    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->allowVideoCallsInLowBattery(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2180
    const/16 p1, 0x1f9

    goto :goto_0

    .line 2182
    :cond_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeOverrideReason(I)I

    move-result p1

    .line 2184
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x7

    .line 2185
    invoke-virtual {v5, v7, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2184
    move v5, p1

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    .line 2186
    return-void
.end method

.method public removeListener(Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;

    .line 307
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 309
    :cond_0
    if-eqz p1, :cond_2

    .line 315
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 316
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 319
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener not found, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    :goto_0
    monitor-exit v0

    .line 322
    return-void

    .line 321
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 310
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 9
    .param p1, "participants"    # [Ljava/lang/String;

    .line 2435
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2436
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 2438
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x1f5

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xa

    .line 2439
    invoke-virtual {v0, v8, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 2438
    invoke-virtual/range {v1 .. v8}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    .line 2440
    return-void
.end method

.method public reportNewConferenceCallSession(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "confCallSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 1538
    if-eqz p1, :cond_0

    .line 1539
    const-string v0, "Calling callSessionMergeStarted"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1540
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 1541
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    .line 1540
    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMergeStarted(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 1543
    :cond_0
    const-string v0, "Null confCallSession! Not calling callSessionMergeStarted"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1546
    :goto_0
    return-void
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 2314
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2316
    :cond_0
    const-string v0, "resume requested."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2317
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget v2, v2, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->resume(Landroid/os/Message;I)V

    .line 2318
    return-void
.end method

.method public resumePendingCall(I)V
    .locals 2
    .param p1, "videoState"    # I

    .line 2090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumePendingCall VideoState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2092
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-static {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v1

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 2093
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p0, v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2094
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 2451
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2453
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendDtmf(CLandroid/os/Message;)V

    .line 2454
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 2744
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2746
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendRttMessage(Ljava/lang/String;Landroid/os/Message;)V

    .line 2747
    return-void
.end method

.method public sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "toProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2751
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2754
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    iget v1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 2758
    .local v0, "details":Lorg/codeaurora/ims/CallDetails;
    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/CallDetails;->setRttMode(I)V

    .line 2759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: sendRttModifyRequest mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v2, v2, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2761
    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    if-nez v1, :cond_1

    goto :goto_0

    .line 2763
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mRttMode is invalid."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2766
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    new-instance v3, Lorg/codeaurora/ims/CallModify;

    iget v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    invoke-direct {v3, v0, v4}, Lorg/codeaurora/ims/CallModify;-><init>(Lorg/codeaurora/ims/CallDetails;I)V

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->modifyCallInitiate(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V

    .line 2768
    return-void
.end method

.method public sendRttModifyResponse(Z)V
    .locals 5
    .param p1, "response"    # Z

    .line 2776
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2778
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallDomain()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 2780
    .local v0, "callDetails":Lorg/codeaurora/ims/CallDetails;
    new-instance v1, Lorg/codeaurora/ims/CallModify;

    invoke-direct {v1}, Lorg/codeaurora/ims/CallModify;-><init>()V

    .line 2781
    .local v1, "callModify":Lorg/codeaurora/ims/CallModify;
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lorg/codeaurora/ims/CallModify;->call_index:I

    .line 2782
    new-instance v2, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v2, v0}, Lorg/codeaurora/ims/CallDetails;-><init>(Lorg/codeaurora/ims/CallDetails;)V

    iput-object v2, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    .line 2784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RTT: sendRttModifyResponse response = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2785
    iget-object v2, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapResponseToMode(Z)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/CallDetails;->setRttMode(I)V

    .line 2787
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xf

    invoke-virtual {v3, v4, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->modifyCallConfirm(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V

    .line 2789
    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 1
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .line 2492
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2494
    :cond_0
    return-void
.end method

.method public setConfInfo(Lorg/codeaurora/ims/parser/ConfInfo;)V
    .locals 1
    .param p1, "confInfo"    # Lorg/codeaurora/ims/parser/ConfInfo;

    .line 2507
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2509
    :cond_0
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    .line 2510
    return-void
.end method

.method public setListener(Landroid/telephony/ims/ImsCallSessionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;

    .line 1516
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1517
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iput-object p1, v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    .line 1518
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .line 1526
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1528
    :cond_0
    return-void
.end method

.method public setNewSession(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 1
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 1937
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1938
    :cond_0
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->newSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 1939
    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 13
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1971
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1973
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, p2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1974
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, p2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput-object v1, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1975
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object v1, p2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 1977
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 1978
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1982
    const-string v1, "oir"

    invoke-virtual {p2, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v1

    .line 1983
    .local v1, "clir":I
    const/4 v8, 0x3

    .line 1984
    .local v8, "domain":I
    const/4 v2, 0x0

    .line 1985
    .local v2, "isEncrypted":Z
    const-string v3, "persist.dbg.call_encrypt_ovr"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_2

    .line 1987
    const/4 v2, 0x1

    .line 1998
    .end local v2    # "isEncrypted":Z
    .local v9, "isEncrypted":Z
    :cond_1
    :goto_0
    move v9, v2

    goto :goto_1

    .line 1989
    .end local v9    # "isEncrypted":Z
    .restart local v2    # "isEncrypted":Z
    :cond_2
    iget-object v3, p2, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v5, "OemCallExtras"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 1990
    .local v3, "callExtras":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 1991
    const-string v5, "CallEncryption"

    .line 1992
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1993
    const-string v5, "CallEncryption"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .end local v3    # "callExtras":Landroid/os/Bundle;
    goto :goto_0

    .line 1998
    .end local v2    # "isEncrypted":Z
    .restart local v9    # "isEncrypted":Z
    :goto_1
    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getLineInfo(Landroid/telephony/ims/ImsCallProfile;)Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v10

    .line 1999
    .local v10, "info":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MultiIdentity Line info in Dial Request :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2009
    new-instance v2, Lorg/codeaurora/ims/CallDetails;

    iget v3, p2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v3

    const/4 v5, 0x0

    invoke-direct {v2, v3, v8, v5, v10}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;Lorg/codeaurora/ims/MultiIdentityLineInfo;)V

    move-object v11, v2

    .line 2012
    .local v11, "details":Lorg/codeaurora/ims/CallDetails;
    invoke-direct {p0, p2, v11}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractProfileExtrasIntoCallDetails(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/CallDetails;)V

    .line 2014
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RTT: start rtt mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v3, v3, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2015
    iget-object v2, p2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v2, v2, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    invoke-virtual {v11, v2}, Lorg/codeaurora/ims/CallDetails;->setRttMode(I)V

    .line 2016
    const-string v2, "CallPull"

    invoke-virtual {p2, v2, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v11, v2}, Lorg/codeaurora/ims/CallDetails;->setCallPull(Z)V

    .line 2018
    invoke-direct {p0, v11}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCarrierOneDial(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v12

    .line 2019
    .local v12, "carrierOneDial":Z
    if-eqz v12, :cond_3

    .line 2020
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "oir"

    .line 2021
    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v4

    .line 2020
    invoke-virtual {v2, v3, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2022
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "cnap"

    .line 2023
    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v4

    .line 2022
    invoke-virtual {v2, v3, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2030
    :cond_3
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "phoneId"

    iget v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    invoke-virtual {v2, v3, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2033
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2034
    if-eqz v12, :cond_4

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    if-eqz v2, :cond_4

    .line 2037
    const-string v0, "defer low battery video call dial request"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2038
    return-void

    .line 2041
    :cond_4
    invoke-direct {p0, v11}, Lorg/codeaurora/ims/ImsCallSessionImpl;->canDial(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2042
    const/16 v0, 0x70

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->failDialRequest(I)V

    .line 2043
    return-void

    .line 2046
    :cond_5
    const v2, 0x7f030004

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isConfigEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, v11, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 2047
    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithDir(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 2048
    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallNumValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2049
    const/16 v0, 0x96

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->failDialRequest(I)V

    .line 2050
    return-void

    .line 2053
    :cond_6
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 2054
    invoke-virtual {v3, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2053
    move-object v3, p1

    move v4, v1

    move-object v5, v11

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->dial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLandroid/os/Message;)V

    .line 2055
    return-void
.end method

.method public startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 10
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2131
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2133
    :cond_0
    iput-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 2134
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 2135
    const/4 v1, 0x0

    aget-object v2, p1, v1

    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 2139
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 2140
    .local v2, "extrasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "isConferenceUri"

    .line 2141
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    .line 2140
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2142
    invoke-static {v2}, Lorg/codeaurora/ims/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v3

    .line 2144
    .local v3, "mMoExtras":[Ljava/lang/String;
    new-instance v7, Lorg/codeaurora/ims/CallDetails;

    iget v4, p2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v4

    const/4 v5, 0x3

    invoke-direct {v7, v4, v5, v3}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 2146
    .local v7, "details":Lorg/codeaurora/ims/CallDetails;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    aget-object v5, p1, v1

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 2147
    invoke-virtual {v1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 2146
    invoke-virtual/range {v4 .. v9}, Lorg/codeaurora/ims/ImsSenderRxr;->dial(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLandroid/os/Message;)V

    .line 2148
    return-void
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .line 2464
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2465
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->startDtmf(CLandroid/os/Message;)V

    .line 2466
    return-void
.end method

.method public stopDtmf()V
    .locals 2

    .line 2472
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2473
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->stopDtmf(Landroid/os/Message;)V

    .line 2474
    return-void
.end method

.method public terminate(I)V
    .locals 8
    .param p1, "reason"    # I

    .line 2271
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2272
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isTerminateLowBatteryCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terminate: fail deferred low battery video call with reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2276
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->failDialRequest(I)V

    .line 2277
    return-void

    .line 2279
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terminate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2283
    const/16 v0, 0x1f9

    if-ne p1, v0, :cond_2

    .line 2284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCallTerminatedDueToLowBattery:Z

    goto :goto_0

    .line 2286
    :cond_2
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeOverrideReason(I)I

    move-result p1

    .line 2289
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    .line 2290
    invoke-virtual {v5, v7, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2289
    move v5, p1

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    .line 2291
    return-void
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 1

    .line 2590
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " callid= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mState= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mDc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mCallProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mLocalCallProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRemoteCallProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unMuteStateReporting()V
    .locals 2

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call session state reporting unmuted. session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    .line 461
    return-void
.end method

.method public update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 2347
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2348
    :cond_0
    return-void
.end method

.method public updateCall(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 8
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCall for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 480
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 481
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 482
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeNotifyCallTypeChanging(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 484
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallModification;->update(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 488
    :cond_1
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v2, "incomingConference"

    invoke-virtual {v0, v2, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 493
    :cond_2
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl$3;->$SwitchMap$org$codeaurora$ims$DriverCallIms$State:[I

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v2}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 590
    :pswitch_0
    const/16 v0, 0x8

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 591
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mAlertingToast:Z

    .line 594
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCallTerminatedDueToLowBattery:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 595
    invoke-static {v0, v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->allowVideoCallsInLowBattery(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 596
    const/16 v0, 0x70

    goto :goto_0

    .line 597
    :cond_3
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v0, v0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 598
    .local v0, "errorCode":I
    :goto_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "CallFailExtraCode"

    invoke-virtual {v3, v4, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 600
    const/16 v3, 0x95

    if-ne v0, v3, :cond_4

    .line 601
    const-string v3, "Call was ended as LTE to 3G/2G handover was not feasible."

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 603
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sip callFailCause:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    iget v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    if-nez v3, :cond_8

    .line 605
    if-eqz p1, :cond_9

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v3, :cond_9

    .line 608
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v3, v3, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    const/16 v4, 0x1fe

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v3, v3, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v3, v5, :cond_5

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v3, v3, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v5, :cond_6

    :cond_5
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v3, v3, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 610
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultiEndpointFailCause(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 611
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v6, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v6, v6, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    iget-object v7, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v7, v7, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-direct {v5, v4, v6, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_1

    .line 615
    :cond_6
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v3, v3, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const/16 v5, 0x1f5

    if-ne v3, v5, :cond_7

    .line 618
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v6, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v6, v6, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    iget-object v7, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v7, v7, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-direct {v5, v4, v6, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_1

    .line 623
    :cond_7
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_1

    .line 627
    :cond_8
    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v3, :cond_9

    .line 628
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    iget v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    iget-object v6, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v6, v6, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    iget-object v7, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v7, v7, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 633
    :cond_9
    :goto_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifySessionDisconnected()V

    .end local v0    # "errorCode":I
    goto/16 :goto_3

    .line 579
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 581
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz v0, :cond_13

    .line 582
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "incomingConference"

    iget-boolean v4, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    invoke-virtual {v0, v3, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 584
    const-string v0, "Setting the multi party flag to false"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 585
    iput-boolean v1, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    goto/16 :goto_3

    .line 550
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAlertingToast:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mAlertingToast:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mAlertingToast:Z

    if-nez v0, :cond_a

    if-eqz p1, :cond_a

    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->mCallFailReason:I

    const/16 v3, 0x204

    if-ne v0, v3, :cond_a

    .line 553
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mAlertingToast:Z

    .line 554
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->handleClearCodeNotify(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 556
    :cond_a
    const/4 v0, 0x2

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 557
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v0, :cond_b

    .line 558
    const-string v0, "MO Alerting call!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 561
    :cond_b
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v3, :cond_d

    .line 562
    const-string v0, "ALERTING mDc.state != DriverCallIms.State.ALERTING"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 565
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 566
    .local v0, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    if-ne v3, v2, :cond_c

    .line 567
    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 569
    :cond_c
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    iput v3, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 570
    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v3, :cond_d

    .line 571
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v3, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 574
    .end local v0    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_d
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->handleRetryErrorNotify(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 575
    goto/16 :goto_3

    .line 536
    :pswitch_3
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v0, :cond_e

    .line 537
    const-string v0, "MO Dialing call!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 539
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 540
    .restart local v0    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    iput v3, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 541
    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v3, :cond_e

    .line 542
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v3, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 545
    .end local v0    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_e
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->handleRetryErrorNotify(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 546
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->handleClearCodeNotify(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 547
    goto/16 :goto_3

    .line 528
    :pswitch_4
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v3, :cond_13

    .line 529
    const-string v0, "Call being held."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_13

    .line 531
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V

    goto/16 :goto_3

    .line 495
    :pswitch_5
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    const/4 v3, 0x4

    if-nez v0, :cond_f

    .line 497
    const-string v0, "Phantom call!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    iput v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 499
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 500
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_13

    .line 501
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_3

    .line 503
    :cond_f
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v4, :cond_12

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v4, :cond_12

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v4, :cond_12

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v4, :cond_10

    goto :goto_2

    .line 516
    :cond_10
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v3, :cond_11

    .line 517
    const-string v0, "Call being resumed."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    .line 520
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_13

    .line 521
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_3

    .line 524
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call resumed skipped, conf status = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConfInProgress:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    goto :goto_3

    .line 507
    :cond_12
    :goto_2
    iput v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 508
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    iput-object v3, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 510
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 511
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_13

    .line 512
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 637
    :cond_13
    :goto_3
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v3, :cond_14

    move v1, v2

    nop

    :cond_14
    move v0, v1

    .line 639
    .local v0, "areStatesSame":Z
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateLocalDc(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 640
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;Z)Z

    .line 642
    :cond_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateConfSession(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 2
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateConfSession for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 804
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 806
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz v0, :cond_1

    .line 807
    const/4 v0, 0x4

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 808
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget v0, v0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 810
    :cond_1
    return-void
.end method

.method public updateFeatureCapabilities(ZZ)V
    .locals 2
    .param p1, "isVideo"    # Z
    .param p2, "isVoice"    # Z

    .line 2518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFeatureCapabilities video "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " voice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2519
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2521
    :cond_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    if-eq v0, p2, :cond_2

    .line 2522
    :cond_1
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    .line 2523
    iput-boolean p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    .line 2524
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_2

    .line 2525
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 2526
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeCreateVideoProvider(Z)V

    .line 2527
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_2

    .line 2528
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2532
    :cond_2
    return-void
.end method

.method public updateLowBatteryStatus()V
    .locals 1

    .line 718
    const-string v0, "updateLowBatteryStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 720
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateLowBatteryStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    .line 723
    :cond_0
    return-void
.end method

.method public updateMergeStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMergeStatus status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->updateMergeStatus(I)V

    .line 468
    :cond_0
    return-void
.end method

.method public updateOrientationMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateOrientationMode: orientation mode - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "OrientationMode"

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 670
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    .line 671
    .local v0, "isCallSessionUpdated":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOrientationMode: isCallSessionUpdated - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method updateSuppServiceInfo(Landroid/telephony/ims/ImsSuppServiceNotification;Z)V
    .locals 4
    .param p1, "suppSvcNotification"    # Landroid/telephony/ims/ImsSuppServiceNotification;
    .param p2, "startOnHoldLocalTone"    # Z

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSuppSvcInfo: suppSvcNotification= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " startOnHoldLocalTone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 832
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 836
    :cond_0
    iget v0, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->notificationType:I

    if-nez v0, :cond_1

    .line 837
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V

    goto/16 :goto_1

    .line 838
    :cond_1
    iget v0, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->notificationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 839
    const/4 v0, 0x0

    .line 840
    .local v0, "isChanged":Z
    iget v1, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->code:I

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setMtSuppSvcCode(I)V

    .line 842
    iget v1, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->code:I

    const/4 v2, 0x7

    packed-switch v1, :pswitch_data_0

    .line 880
    const-string v1, "Non-Hold/Resume supp svc code received."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 881
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V

    goto :goto_0

    .line 864
    :pswitch_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    if-nez v1, :cond_2

    .line 866
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v3, 0x3

    iput v3, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 869
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 871
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallRemoveModifyCallCapability(ILandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-ne v1, v2, :cond_4

    .line 874
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setRemoteProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 875
    const/4 v0, 0x1

    goto :goto_0

    .line 845
    :pswitch_1
    if-eqz p2, :cond_3

    .line 846
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v3, 0x0

    iput v3, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 849
    :cond_3
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 851
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallRemoveModifyCallCapability(ILandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-eq v1, v2, :cond_4

    .line 858
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v2, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 859
    const/4 v0, 0x1

    .line 885
    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    .line 886
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 889
    .end local v0    # "isChanged":Z
    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateVideoCallDataUsageInfo(Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V
    .locals 3
    .param p1, "dataUsage"    # Lorg/codeaurora/ims/QtiVideoCallDataUsage;

    .line 675
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f030007

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Config;->isConfigEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 676
    return-void

    .line 678
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v1, "dataUsage"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 680
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    .line 681
    .local v0, "isCallSessionUpdated":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVideoCallDataUsageInfo: isCallSessionUpdated - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 683
    return-void
.end method

.method public updateVoWiFiCallQuality(I)V
    .locals 2
    .param p1, "quality"    # I

    .line 2734
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mVoWifiQuality:I

    if-eq p1, v0, :cond_0

    .line 2735
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mVoWifiQuality:I

    .line 2736
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateVoWifiCallQualityExtra(IZ)V

    goto :goto_0

    .line 2738
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVoWiFiCallQuality Unchanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2740
    :goto_0
    return-void
.end method
