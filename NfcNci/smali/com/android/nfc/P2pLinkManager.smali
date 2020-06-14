.class Lcom/android/nfc/P2pLinkManager;
.super Ljava/lang/Object;
.source "P2pLinkManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/nfc/P2pEventListener$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/P2pLinkManager$SendTask;,
        Lcom/android/nfc/P2pLinkManager$ConnectTask;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field static final DISABLE_BEAM_DEFAULT:Ljava/lang/String; = "android.nfc.disable_beam_default"

.field static final ECHOSERVER_ENABLED:Z = false

.field static final HANDOVER_BUSY:I = 0x3

.field static final HANDOVER_FAILURE:I = 0x1

.field static final HANDOVER_SAP:I = 0x14

.field static final HANDOVER_SUCCESS:I = 0x0

.field static final HANDOVER_UNSUPPORTED:I = 0x2

.field static final LINK_SEND_CANCELED_DEBOUNCE_MS:I = 0xfa

.field static final LINK_SEND_COMPLETE_DEBOUNCE_MS:I = 0x1f4

.field static final LINK_SEND_CONFIRMED_DEBOUNCE_MS:I = 0x1388

.field static final LINK_SEND_PENDING_DEBOUNCE_MS:I = 0xbb8

.field static final LINK_STATE_DEBOUNCE:I = 0x3

.field static final LINK_STATE_DOWN:I = 0x1

.field static final LINK_STATE_UP:I = 0x2

.field static final MSG_DEBOUNCE_TIMEOUT:I = 0x1

.field static final MSG_HANDOVER_BUSY:I = 0xa

.field static final MSG_HANDOVER_NOT_SUPPORTED:I = 0x7

.field static final MSG_RECEIVE_COMPLETE:I = 0x2

.field static final MSG_RECEIVE_HANDOVER:I = 0x3

.field static final MSG_SEND_COMPLETE:I = 0x4

.field static final MSG_SHOW_CONFIRMATION_UI:I = 0x8

.field static final MSG_START_ECHOSERVER:I = 0x5

.field static final MSG_STOP_ECHOSERVER:I = 0x6

.field static final MSG_WAIT_FOR_LINK_TIMEOUT:I = 0x9

.field static final NDEFPUSH_SAP:I = 0x10

.field static final SEND_STATE_CANCELED:I = 0x6

.field static final SEND_STATE_COMPLETE:I = 0x5

.field static final SEND_STATE_NEED_CONFIRMATION:I = 0x2

.field static final SEND_STATE_NOTHING_TO_SEND:I = 0x1

.field static final SEND_STATE_PENDING:I = 0x3

.field static final SEND_STATE_SENDING:I = 0x4

.field static final SNEP_FAILURE:I = 0x1

.field static final SNEP_SUCCESS:I = 0x0

.field static final TAG:Ljava/lang/String; = "NfcP2pLinkManager"

.field static final WAIT_FOR_LINK_TIMEOUT_MS:I = 0x2710


# instance fields
.field mCallbackNdef:Landroid/nfc/IAppCallback;

.field private mClientEnabled:Z

.field mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

.field final mContext:Landroid/content/Context;

.field final mDefaultMiu:I

.field final mDefaultRwSize:I

.field final mDefaultSnepCallback:Lcom/android/nfc/snep/SnepServer$Callback;

.field final mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

.field private mDtaMiu:I

.field private mDtaRwSize:I

.field private mDtaSnepClient:Lcom/android/nfc/sneptest/DtaSnepClient;

.field final mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

.field final mEventListener:Lcom/android/nfc/P2pEventListener;

.field private mExtDtaSnepServer:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

.field final mExtDtaSnepServerCallback:Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;

.field private mExtDtaSnepServerRunning:Z

.field final mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

.field final mHandler:Landroid/os/Handler;

.field final mHandoverCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

.field mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

.field final mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

.field final mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

.field mIsReceiveEnabled:Z

.field mIsSendEnabled:Z

.field mLastLlcpActivationTime:J

.field mLinkState:I

.field mLlcpServicesConnected:Z

.field mMessageToSend:Landroid/nfc/NdefMessage;

.field mNdefCallbackUid:I

.field mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

.field final mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

.field final mNppCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mPeerLlcpVersion:B

.field mPrefs:Landroid/content/SharedPreferences;

.field private mPutBeforeGet:Z

.field mSendFlags:I

.field mSendState:I

.field mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

.field private mServerEnabled:Z

.field private mServiceName:Ljava/lang/String;

.field private mServiceSap:I

.field mSnepClient:Lcom/android/nfc/snep/SnepClient;

.field private mTestCaseID:I

.field mUrisToSend:[Landroid/net/Uri;

.field mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverDataParser"    # Lcom/android/nfc/handover/HandoverDataParser;
    .param p3, "defaultMiu"    # I
    .param p4, "defaultRwSize"    # I

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServer:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    .line 255
    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDtaSnepClient:Lcom/android/nfc/sneptest/DtaSnepClient;

    .line 256
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mClientEnabled:Z

    .line 257
    iput-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mServerEnabled:Z

    .line 258
    iput-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServerRunning:Z

    .line 259
    iput-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mPutBeforeGet:Z

    .line 965
    new-instance v2, Lcom/android/nfc/P2pLinkManager$1;

    invoke-direct {v2, p0}, Lcom/android/nfc/P2pLinkManager$1;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    .line 977
    new-instance v2, Lcom/android/nfc/P2pLinkManager$2;

    invoke-direct {v2, p0}, Lcom/android/nfc/P2pLinkManager$2;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mNppCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

    .line 984
    new-instance v2, Lcom/android/nfc/P2pLinkManager$3;

    invoke-direct {v2, p0}, Lcom/android/nfc/P2pLinkManager$3;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    .line 1017
    new-instance v2, Lcom/android/nfc/P2pLinkManager$4;

    invoke-direct {v2, p0}, Lcom/android/nfc/P2pLinkManager$4;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServerCallback:Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;

    .line 263
    new-instance v2, Lcom/android/nfc/ndefpush/NdefPushServer;

    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager;->mNppCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

    const/16 v4, 0x10

    invoke-direct {v2, v4, v3}, Lcom/android/nfc/ndefpush/NdefPushServer;-><init>(ILcom/android/nfc/ndefpush/NdefPushServer$Callback;)V

    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

    .line 264
    new-instance v2, Lcom/android/nfc/snep/SnepServer;

    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    invoke-direct {v2, v3, p3, p4}, Lcom/android/nfc/snep/SnepServer;-><init>(Lcom/android/nfc/snep/SnepServer$Callback;II)V

    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

    .line 265
    new-instance v2, Lcom/android/nfc/handover/HandoverServer;

    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    const/16 v4, 0x14

    invoke-direct {v2, p1, v4, p2, v3}, Lcom/android/nfc/handover/HandoverServer;-><init>(Landroid/content/Context;ILcom/android/nfc/handover/HandoverDataParser;Lcom/android/nfc/handover/HandoverServer$Callback;)V

    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

    .line 270
    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 273
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    .line 274
    new-instance v0, Lcom/android/nfc/P2pEventManager;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/P2pEventManager;-><init>(Landroid/content/Context;Lcom/android/nfc/P2pEventListener$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    .line 275
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    .line 276
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 277
    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 278
    iput-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    .line 279
    iput-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    .line 280
    const-string v0, "NfcServicePrefs"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 281
    iput-object p2, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 282
    iput p3, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultMiu:I

    .line 283
    iput p4, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultRwSize:I

    .line 284
    iput-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    .line 285
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefCallbackUid:I

    .line 286
    invoke-static {}, Lcom/android/nfc/ForegroundUtils;->getInstance()Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    .line 287
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/P2pLinkManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;

    .line 147
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mClientEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/nfc/P2pLinkManager;)Lcom/android/nfc/sneptest/DtaSnepClient;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;

    .line 147
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDtaSnepClient:Lcom/android/nfc/sneptest/DtaSnepClient;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/nfc/P2pLinkManager;Lcom/android/nfc/sneptest/DtaSnepClient;)Lcom/android/nfc/sneptest/DtaSnepClient;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;
    .param p1, "x1"    # Lcom/android/nfc/sneptest/DtaSnepClient;

    .line 147
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager;->mDtaSnepClient:Lcom/android/nfc/sneptest/DtaSnepClient;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/nfc/P2pLinkManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;

    .line 147
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/nfc/P2pLinkManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;

    .line 147
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mDtaMiu:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/nfc/P2pLinkManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;

    .line 147
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mDtaRwSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/nfc/P2pLinkManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;

    .line 147
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mTestCaseID:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/nfc/P2pLinkManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;

    .line 147
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mPutBeforeGet:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/nfc/P2pLinkManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;
    .param p1, "x1"    # Z

    .line 147
    iput-boolean p1, p0, Lcom/android/nfc/P2pLinkManager;->mPutBeforeGet:Z

    return p1
.end method

.method private isBeamDisabled(I)Z
    .locals 4
    .param p1, "uid"    # I

    .line 571
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 572
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 573
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    nop

    .line 574
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 573
    const-string v3, "no_outgoing_beam"

    invoke-virtual {v0, v3, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    return v2
.end method

.method static linkStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 1237
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 1245
    const-string v0, "<error>"

    return-object v0

    .line 1241
    :cond_0
    const-string v0, "LINK_STATE_DEBOUNCE"

    return-object v0

    .line 1243
    :cond_1
    const-string v0, "LINK_STATE_UP"

    return-object v0

    .line 1239
    :cond_2
    const-string v0, "LINK_STATE_DOWN"

    return-object v0
.end method

.method private onP2pSendConfirmed(Z)V
    .locals 3
    .param p1, "requireConfirmation"    # Z

    .line 1176
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onP2pSendConfirmed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    monitor-enter p0

    .line 1178
    :try_start_0
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v2, v0, :cond_0

    goto :goto_1

    .line 1182
    :cond_0
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1183
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v2, v0, :cond_1

    .line 1184
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    if-eqz v0, :cond_2

    .line 1185
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->sendNdefMessage()V

    goto :goto_0

    .line 1187
    :cond_1
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 1189
    const/16 v0, 0x1388

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V

    .line 1190
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pSendDebounce()V

    .line 1192
    :cond_2
    :goto_0
    monitor-exit p0

    .line 1193
    return-void

    .line 1180
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 1192
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static sendStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 1220
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    .line 1232
    const-string v0, "<error>"

    return-object v0

    .line 1230
    :cond_0
    const-string v0, "SEND_STATE_CANCELED"

    return-object v0

    .line 1228
    :cond_1
    const-string v0, "SEND_STATE_COMPLETE"

    return-object v0

    .line 1226
    :cond_2
    const-string v0, "SEND_STATE_SENDING"

    return-object v0

    .line 1224
    :cond_3
    const-string v0, "SEND_STATE_NEED_CONFIRMATION"

    return-object v0

    .line 1222
    :cond_4
    const-string v0, "SEND_STATE_NOTHING_TO_SEND"

    return-object v0
.end method


# virtual methods
.method beamDefaultDisabled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 580
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 582
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_0

    goto :goto_0

    .line 585
    :cond_0
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "android.nfc.disable_beam_default"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 583
    :cond_1
    :goto_0
    return v0

    .line 586
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 587
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method cancelSendNdefMessage()V
    .locals 2

    .line 690
    monitor-enter p0

    .line 691
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$SendTask;->cancel(Z)Z

    .line 694
    :cond_0
    monitor-exit p0

    .line 695
    return-void

    .line 694
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method connectLlcpServices()V
    .locals 2

    .line 698
    monitor-enter p0

    .line 699
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    if-eqz v0, :cond_0

    .line 700
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Still had a reference to mConnectTask!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_0
    new-instance v0, Lcom/android/nfc/P2pLinkManager$ConnectTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$ConnectTask;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    .line 703
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 704
    monitor-exit p0

    .line 705
    return-void

    .line 704
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method createDefaultNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&feature=beam"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NdefRecord;->createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 594
    .local v0, "appUri":Landroid/nfc/NdefRecord;
    invoke-static {p1}, Landroid/nfc/NdefRecord;->createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 595
    .local v1, "appRecord":Landroid/nfc/NdefRecord;
    new-instance v2, Landroid/nfc/NdefMessage;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v2
.end method

.method public disableDtaSnepClient()V
    .locals 2

    .line 371
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "disableDtaSnepClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDtaSnepClient:Lcom/android/nfc/sneptest/DtaSnepClient;

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mClientEnabled:Z

    .line 374
    return-void
.end method

.method public disableExtDtaSnepServer()V
    .locals 2

    .line 343
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Disabling Extended DTA Server"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServerRunning:Z

    if-nez v0, :cond_0

    .line 345
    return-void

    .line 346
    :cond_0
    monitor-enter p0

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServer:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    invoke-virtual {v0}, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->stop()V

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServer:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServerRunning:Z

    .line 350
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mServerEnabled:Z

    .line 352
    return-void

    .line 350
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method disconnectLlcpServices()V
    .locals 3

    .line 599
    monitor-enter p0

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->cancel(Z)Z

    .line 602
    iput-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushClient;->close()V

    .line 607
    iput-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v0, :cond_2

    .line 610
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepClient;->close()V

    .line 611
    iput-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    .line 613
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    if-eqz v0, :cond_3

    .line 614
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverClient;->close()V

    .line 615
    iput-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    .line 617
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    .line 618
    monitor-exit p0

    .line 619
    return-void

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1250
    monitor-enter p0

    .line 1251
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsSendEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsReceiveEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLinkState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    invoke-static {v1}, Lcom/android/nfc/P2pLinkManager;->linkStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSendState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    invoke-static {v1}, Lcom/android/nfc/P2pLinkManager;->sendStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCallbackNdef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMessageToSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUrisToSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1259
    monitor-exit p0

    .line 1260
    return-void

    .line 1259
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableDisable(ZZ)V
    .locals 2
    .param p1, "sendEnable"    # Z
    .param p2, "receiveEnable"    # Z

    .line 294
    monitor-enter p0

    .line 295
    :try_start_0
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer;->start()V

    .line 297
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushServer;->start()V

    .line 298
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverServer;->start()V

    .line 299
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 302
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 303
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "enableDisable: llcp deactivate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->onLlcpDeactivated()V

    .line 305
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer;->stop()V

    .line 306
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushServer;->stop()V

    .line 307
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverServer;->stop()V

    .line 308
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 311
    :cond_1
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServerRunning:Z

    if-eqz v0, :cond_2

    .line 312
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->disableExtDtaSnepServer()V

    .line 314
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    .line 315
    iput-boolean p2, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    .line 316
    monitor-exit p0

    .line 317
    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableDtaSnepClient(Ljava/lang/String;III)V
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "miu"    # I
    .param p3, "rwSize"    # I
    .param p4, "testCaseId"    # I

    .line 358
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "enableDtaSnepClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mClientEnabled:Z

    .line 360
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager;->mServiceName:Ljava/lang/String;

    .line 361
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mServiceSap:I

    .line 362
    iput p2, p0, Lcom/android/nfc/P2pLinkManager;->mDtaMiu:I

    .line 363
    iput p3, p0, Lcom/android/nfc/P2pLinkManager;->mDtaRwSize:I

    .line 364
    iput p4, p0, Lcom/android/nfc/P2pLinkManager;->mTestCaseID:I

    .line 365
    return-void
.end method

.method public enableExtDtaSnepServer(Ljava/lang/String;IIII)V
    .locals 9
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceSap"    # I
    .param p3, "miu"    # I
    .param p4, "rwSize"    # I
    .param p5, "testCaseId"    # I

    .line 323
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Enabling Extended DTA Server"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager;->mServiceName:Ljava/lang/String;

    .line 325
    iput p2, p0, Lcom/android/nfc/P2pLinkManager;->mServiceSap:I

    .line 326
    iput p3, p0, Lcom/android/nfc/P2pLinkManager;->mDtaMiu:I

    .line 327
    iput p4, p0, Lcom/android/nfc/P2pLinkManager;->mDtaRwSize:I

    .line 328
    iput p5, p0, Lcom/android/nfc/P2pLinkManager;->mTestCaseID:I

    .line 329
    monitor-enter p0

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServer:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mServiceName:Ljava/lang/String;

    iget v3, p0, Lcom/android/nfc/P2pLinkManager;->mServiceSap:I

    iget v4, p0, Lcom/android/nfc/P2pLinkManager;->mDtaMiu:I

    iget v5, p0, Lcom/android/nfc/P2pLinkManager;->mDtaRwSize:I

    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServerCallback:Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;

    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/nfc/P2pLinkManager;->mTestCaseID:I

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/nfc/sneptest/ExtDtaSnepServer;-><init>(Ljava/lang/String;IIILcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServer:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServer:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    invoke-virtual {v0}, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->start()V

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServerRunning:Z

    .line 335
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mServerEnabled:Z

    .line 337
    return-void

    .line 335
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1057
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/16 v2, 0x88

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 1155
    :pswitch_1
    monitor-enter p0

    .line 1156
    :try_start_0
    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 1158
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v0, v5, :cond_1

    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 1161
    :cond_0
    iput v5, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1162
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onP2pHandoverBusy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pHandoverBusy()V

    .line 1164
    monitor-exit p0

    goto/16 :goto_4

    .line 1159
    :cond_1
    :goto_0
    monitor-exit p0

    goto/16 :goto_4

    .line 1164
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1069
    :pswitch_2
    monitor-enter p0

    .line 1072
    :try_start_1
    iput v5, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1073
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pTimeoutWaitingForLink()V

    .line 1074
    monitor-exit p0

    .line 1075
    goto/16 :goto_4

    .line 1074
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 1122
    :pswitch_3
    monitor-enter p0

    .line 1123
    :try_start_2
    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 1125
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v0, v5, :cond_3

    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v0, v3, :cond_2

    goto :goto_1

    .line 1128
    :cond_2
    iput v5, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1129
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onP2pHandoverNotSupported()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pHandoverNotSupported()V

    .line 1131
    monitor-exit p0

    .line 1132
    goto/16 :goto_4

    .line 1126
    :cond_3
    :goto_1
    monitor-exit p0

    goto/16 :goto_4

    .line 1131
    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 1064
    :pswitch_4
    monitor-enter p0

    .line 1065
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer;->stop()V

    .line 1066
    monitor-exit p0

    goto/16 :goto_4

    .line 1067
    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    .line 1059
    :pswitch_5
    monitor-enter p0

    .line 1060
    :try_start_4
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer;->start()V

    .line 1061
    monitor-exit p0

    goto/16 :goto_4

    .line 1062
    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    .line 1134
    :pswitch_6
    monitor-enter p0

    .line 1135
    :try_start_5
    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 1137
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v0, v5, :cond_6

    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v0, v3, :cond_4

    goto :goto_3

    .line 1140
    :cond_4
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1141
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1142
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onP2pSendComplete()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pSendComplete()V

    .line 1144
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v0, :cond_5

    .line 1146
    :try_start_6
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    iget-byte v1, p0, Lcom/android/nfc/P2pLinkManager;->mPeerLlcpVersion:B

    invoke-interface {v0, v1}, Landroid/nfc/IAppCallback;->onNdefPushComplete(B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1149
    goto :goto_2

    .line 1147
    :catch_0
    move-exception v0

    .line 1148
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v1, "NfcP2pLinkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed NDEF completed callback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    invoke-static {v2, v5}, Landroid/util/StatsLog;->write(II)I

    .line 1152
    monitor-exit p0

    .line 1153
    goto/16 :goto_4

    .line 1138
    :cond_6
    :goto_3
    monitor-exit p0

    goto/16 :goto_4

    .line 1152
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    .line 1092
    :pswitch_7
    monitor-enter p0

    .line 1093
    :try_start_8
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v0, v5, :cond_7

    .line 1094
    monitor-exit p0

    goto/16 :goto_4

    .line 1096
    :cond_7
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v0, v3, :cond_8

    .line 1097
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 1099
    :cond_8
    iput v5, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1100
    const-string v0, "NfcP2pLinkManager"

    const-string v3, "onP2pReceiveComplete()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/android/nfc/P2pEventListener;->onP2pReceiveComplete(Z)V

    .line 1102
    invoke-static {v2, v1}, Landroid/util/StatsLog;->write(II)I

    .line 1103
    monitor-exit p0

    .line 1104
    goto :goto_4

    .line 1103
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    throw v0

    .line 1106
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/nfc/NdefMessage;

    .line 1107
    .local v0, "m":Landroid/nfc/NdefMessage;
    monitor-enter p0

    .line 1108
    :try_start_9
    iget v4, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v4, v5, :cond_9

    .line 1109
    monitor-exit p0

    goto :goto_4

    .line 1111
    :cond_9
    iget v4, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v4, v3, :cond_a

    .line 1112
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 1114
    :cond_a
    iput v5, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1115
    const-string v3, "NfcP2pLinkManager"

    const-string v4, "onP2pReceiveComplete()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v3, v5}, Lcom/android/nfc/P2pEventListener;->onP2pReceiveComplete(Z)V

    .line 1117
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/nfc/NfcService;->sendMockNdefTag(Landroid/nfc/NdefMessage;)V

    .line 1118
    invoke-static {v2, v1}, Landroid/util/StatsLog;->write(II)I

    .line 1119
    monitor-exit p0

    .line 1120
    goto :goto_4

    .line 1119
    :catchall_7
    move-exception v1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    throw v1

    .line 1077
    .end local v0    # "m":Landroid/nfc/NdefMessage;
    :pswitch_9
    monitor-enter p0

    .line 1078
    :try_start_a
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    .line 1079
    monitor-exit p0

    goto :goto_4

    .line 1081
    :cond_b
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Debounce timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iput v5, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 1083
    iput v5, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1084
    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 1085
    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 1086
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onP2pOutOfRange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pOutOfRange()V

    .line 1088
    monitor-exit p0

    .line 1089
    goto :goto_4

    .line 1088
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    throw v0

    .line 1166
    :goto_4
    return v5

    :pswitch_data_0
    .packed-switch 0x1
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

.method public isLlcpActive()Z
    .locals 2

    .line 382
    monitor-enter p0

    .line 383
    :try_start_0
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onHandoverBusy()V
    .locals 2

    .line 673
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 674
    return-void
.end method

.method onHandoverUnsupported()V
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 670
    return-void
.end method

.method public onLlcpActivated(B)V
    .locals 6
    .param p1, "peerLlcpVersion"    # B

    .line 437
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "LLCP activated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    monitor-enter p0

    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer;->onLlcpActivated()V

    .line 442
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/nfc/P2pLinkManager;->mLastLlcpActivationTime:J

    .line 443
    iput-byte p1, p0, Lcom/android/nfc/P2pLinkManager;->mPeerLlcpVersion:B

    .line 444
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 477
    :cond_1
    iput v3, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 478
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v0, v3, :cond_3

    .line 481
    :cond_2
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->connectLlcpServices()V

    .line 483
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 473
    :cond_4
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Duplicate onLlcpActivated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    monitor-exit p0

    return-void

    .line 446
    :cond_5
    const-string v0, "NfcP2pLinkManager"

    const-string v5, "onP2pInRange()"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pInRange()V

    .line 449
    iput v3, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 452
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v0, v1, :cond_6

    .line 453
    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 454
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 456
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->connectLlcpServices()V

    goto :goto_0

    .line 458
    :cond_6
    iput v4, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 459
    invoke-virtual {p0, v4}, Lcom/android/nfc/P2pLinkManager;->prepareMessageToSend(Z)V

    .line 460
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 461
    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverDataParser;->isHandoverSupported()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 463
    :cond_7
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->connectLlcpServices()V

    .line 464
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendFlags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_8

    .line 465
    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    goto :goto_0

    .line 467
    :cond_8
    iput v3, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 486
    :cond_9
    :goto_0
    monitor-exit p0

    .line 487
    return-void

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onLlcpDeactivated()V
    .locals 5

    .line 625
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "LLCP deactivated."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    monitor-enter p0

    .line 627
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer;->onLlcpDeactivated()V

    .line 631
    :cond_0
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_8

    goto :goto_1

    .line 638
    :cond_1
    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, "debounceTimeout":I
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    const/4 v4, 0x4

    if-eq v2, v1, :cond_6

    if-eq v2, v3, :cond_5

    if-eq v2, v4, :cond_4

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 654
    :cond_2
    const/16 v0, 0xfa

    goto :goto_0

    .line 651
    :cond_3
    const/16 v0, 0x1f4

    .line 652
    goto :goto_0

    .line 648
    :cond_4
    const/16 v0, 0x1388

    .line 649
    goto :goto_0

    .line 645
    :cond_5
    const/16 v0, 0xbb8

    .line 646
    goto :goto_0

    .line 642
    :cond_6
    const/4 v0, 0x0

    .line 643
    nop

    .line 656
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V

    .line 657
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v1, v4, :cond_7

    .line 658
    const-string v1, "NfcP2pLinkManager"

    const-string v2, "onP2pSendDebounce()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v1}, Lcom/android/nfc/P2pEventListener;->onP2pSendDebounce()V

    .line 661
    :cond_7
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 662
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->disconnectLlcpServices()V

    goto :goto_1

    .line 634
    .end local v0    # "debounceTimeout":I
    :cond_8
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Duplicate onLlcpDectivated()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    nop

    .line 665
    :goto_1
    monitor-exit p0

    .line 666
    return-void

    .line 665
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onLlcpFirstPacketReceived()V
    .locals 5

    .line 493
    monitor-enter p0

    .line 494
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/nfc/P2pLinkManager;->mLastLlcpActivationTime:J

    sub-long/2addr v0, v2

    .line 495
    .local v0, "totalTime":J
    const-string v2, "NfcP2pLinkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to get first LLCP PDU"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    nop

    .end local v0    # "totalTime":J
    monitor-exit p0

    .line 497
    return-void

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onLlcpServicesConnected()V
    .locals 2

    .line 709
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onLlcpServicesConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    monitor-enter p0

    .line 711
    :try_start_0
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 712
    monitor-exit p0

    return-void

    .line 714
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    .line 715
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v0, v1, :cond_1

    .line 716
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onP2pSendConfirmationRequested()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pSendConfirmationRequested()V

    goto :goto_0

    .line 718
    :cond_1
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 719
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pResumeSend()V

    .line 720
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->sendNdefMessage()V

    .line 724
    :cond_2
    :goto_0
    monitor-exit p0

    .line 725
    return-void

    .line 724
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onManualBeamInvoke(Landroid/nfc/BeamShareData;)V
    .locals 2
    .param p1, "shareData"    # Landroid/nfc/BeamShareData;

    .line 403
    monitor-enter p0

    .line 404
    :try_start_0
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 405
    monitor-exit p0

    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    invoke-virtual {v0}, Lcom/android/nfc/ForegroundUtils;->getForegroundUids()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mNdefCallbackUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/P2pLinkManager;->prepareMessageToSend(Z)V

    goto :goto_0

    .line 411
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 412
    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 414
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 416
    iget-object v0, p1, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p1, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    goto :goto_1

    .line 418
    :cond_2
    iget-object v0, p1, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    if-eqz v0, :cond_3

    .line 419
    iget-object v0, p1, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 422
    :cond_3
    :goto_1
    iget-object v0, p1, Landroid/nfc/BeamShareData;->userHandle:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUserHandle:Landroid/os/UserHandle;

    .line 424
    :cond_4
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 425
    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverDataParser;->isHandoverSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 426
    :cond_5
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 427
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pNfcTapRequested()V

    .line 428
    const/16 v0, 0x9

    const/16 v1, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V

    .line 430
    :cond_6
    monitor-exit p0

    .line 431
    return-void

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onP2pCanceled()V
    .locals 3

    .line 1198
    monitor-enter p0

    .line 1199
    const/4 v0, 0x6

    :try_start_0
    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1200
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1203
    :cond_0
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1206
    const/16 v0, 0xfa

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V

    .line 1210
    :cond_1
    :goto_0
    monitor-exit p0

    .line 1211
    return-void

    .line 1210
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onP2pSendConfirmed()V
    .locals 1

    .line 1172
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/nfc/P2pLinkManager;->onP2pSendConfirmed(Z)V

    .line 1173
    return-void
.end method

.method onReceiveComplete(Landroid/nfc/NdefMessage;)V
    .locals 2
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .line 1052
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1053
    return-void
.end method

.method onReceiveHandover()V
    .locals 2

    .line 1047
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1048
    return-void
.end method

.method onSendComplete(Landroid/nfc/NdefMessage;J)V
    .locals 2
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .param p2, "elapsedRealtime"    # J

    .line 678
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 679
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 501
    monitor-enter p0

    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    const-string v1, "android"

    const/4 v2, 0x0

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    goto :goto_0

    .line 508
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    const-string v1, "NfcP2pLinkManager"

    const-string v2, "Failed to retrieve PackageManager for user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    monitor-exit p0

    .line 509
    return-void

    .line 508
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method prepareMessageToSend(Z)V
    .locals 6
    .param p1, "generatePlayLink"    # Z

    .line 512
    monitor-enter p0

    .line 513
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 514
    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 515
    iget-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    if-nez v1, :cond_0

    .line 516
    monitor-exit p0

    return-void

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    invoke-virtual {v1}, Lcom/android/nfc/ForegroundUtils;->getForegroundUids()Ljava/util/List;

    move-result-object v1

    .line 520
    .local v1, "foregroundUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 521
    const-string v0, "NfcP2pLinkManager"

    const-string v2, "Could not determine foreground UID."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    monitor-exit p0

    return-void

    .line 525
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/nfc/P2pLinkManager;->isBeamDisabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 526
    const-string v0, "NfcP2pLinkManager"

    const-string v2, "Beam is disabled by policy."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    monitor-exit p0

    return-void

    .line 530
    :cond_2
    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    if-eqz v3, :cond_4

    .line 531
    iget v3, p0, Lcom/android/nfc/P2pLinkManager;->mNdefCallbackUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 533
    :try_start_1
    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    iget-byte v4, p0, Lcom/android/nfc/P2pLinkManager;->mPeerLlcpVersion:B

    invoke-interface {v3, v4}, Landroid/nfc/IAppCallback;->createBeamShareData(B)Landroid/nfc/BeamShareData;

    move-result-object v3

    .line 534
    .local v3, "shareData":Landroid/nfc/BeamShareData;
    iget-object v4, v3, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 535
    iget-object v4, v3, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 536
    iget-object v4, v3, Landroid/nfc/BeamShareData;->userHandle:Landroid/os/UserHandle;

    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mUserHandle:Landroid/os/UserHandle;

    .line 537
    iget v4, v3, Landroid/nfc/BeamShareData;->flags:I

    iput v4, p0, Lcom/android/nfc/P2pLinkManager;->mSendFlags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 538
    :try_start_2
    monitor-exit p0

    return-void

    .line 539
    .end local v3    # "shareData":Landroid/nfc/BeamShareData;
    :catch_0
    move-exception v3

    .line 540
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "NfcP2pLinkManager"

    const-string v5, "Failed NDEF callback: "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 541
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 546
    :cond_3
    const-string v3, "NfcP2pLinkManager"

    const-string v4, "Last registered callback is not running in the foreground."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 553
    .local v3, "pkgs":[Ljava/lang/String;
    if-eqz v3, :cond_7

    array-length v4, v3

    const/4 v5, 0x1

    if-lt v4, v5, :cond_7

    .line 554
    if-eqz p1, :cond_6

    aget-object v4, v3, v2

    invoke-virtual {p0, v4}, Lcom/android/nfc/P2pLinkManager;->beamDefaultDisabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 559
    :cond_5
    aget-object v4, v3, v2

    invoke-virtual {p0, v4}, Lcom/android/nfc/P2pLinkManager;->createDefaultNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 560
    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 561
    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendFlags:I

    goto :goto_2

    .line 555
    :cond_6
    :goto_1
    const-string v2, "NfcP2pLinkManager"

    const-string v4, "Disabling default Beam behavior"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 557
    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 565
    :cond_7
    :goto_2
    const-string v0, "NfcP2pLinkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMessageToSend = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v0, "NfcP2pLinkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUrisToSend = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    nop

    .end local v1    # "foregroundUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "pkgs":[Ljava/lang/String;
    monitor-exit p0

    .line 568
    return-void

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method scheduleTimeoutLocked(II)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "timeout"    # I

    .line 1215
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1216
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1217
    return-void
.end method

.method sendNdefMessage()V
    .locals 2

    .line 682
    monitor-enter p0

    .line 683
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 684
    new-instance v0, Lcom/android/nfc/P2pLinkManager$SendTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$SendTask;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 685
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$SendTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 686
    monitor-exit p0

    .line 687
    return-void

    .line 686
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNdefCallback(Landroid/nfc/IAppCallback;I)V
    .locals 1
    .param p1, "callbackNdef"    # Landroid/nfc/IAppCallback;
    .param p2, "callingUid"    # I

    .line 395
    monitor-enter p0

    .line 396
    :try_start_0
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    .line 397
    iput p2, p0, Lcom/android/nfc/P2pLinkManager;->mNdefCallbackUid:I

    .line 398
    monitor-exit p0

    .line 399
    return-void

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
