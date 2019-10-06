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

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServer:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    .line 268
    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDtaSnepClient:Lcom/android/nfc/sneptest/DtaSnepClient;

    .line 269
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mClientEnabled:Z

    .line 270
    iput-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mServerEnabled:Z

    .line 271
    iput-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServerRunning:Z

    .line 272
    iput-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mPutBeforeGet:Z

    .line 983
    new-instance v2, Lcom/android/nfc/P2pLinkManager$1;

    invoke-direct {v2, p0}, Lcom/android/nfc/P2pLinkManager$1;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    .line 995
    new-instance v2, Lcom/android/nfc/P2pLinkManager$2;

    invoke-direct {v2, p0}, Lcom/android/nfc/P2pLinkManager$2;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mNppCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

    .line 1002
    new-instance v2, Lcom/android/nfc/P2pLinkManager$3;

    invoke-direct {v2, p0}, Lcom/android/nfc/P2pLinkManager$3;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    .line 1035
    new-instance v2, Lcom/android/nfc/P2pLinkManager$4;

    invoke-direct {v2, p0}, Lcom/android/nfc/P2pLinkManager$4;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServerCallback:Lcom/android/nfc/sneptest/ExtDtaSnepServer$Callback;

    .line 276
    new-instance v2, Lcom/android/nfc/ndefpush/NdefPushServer;

    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager;->mNppCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

    const/16 v4, 0x10

    invoke-direct {v2, v4, v3}, Lcom/android/nfc/ndefpush/NdefPushServer;-><init>(ILcom/android/nfc/ndefpush/NdefPushServer$Callback;)V

    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

    .line 277
    new-instance v2, Lcom/android/nfc/snep/SnepServer;

    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    invoke-direct {v2, v3, p3, p4}, Lcom/android/nfc/snep/SnepServer;-><init>(Lcom/android/nfc/snep/SnepServer$Callback;II)V

    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

    .line 278
    new-instance v2, Lcom/android/nfc/handover/HandoverServer;

    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    const/16 v4, 0x14

    invoke-direct {v2, p1, v4, p2, v3}, Lcom/android/nfc/handover/HandoverServer;-><init>(Landroid/content/Context;ILcom/android/nfc/handover/HandoverDataParser;Lcom/android/nfc/handover/HandoverServer$Callback;)V

    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

    .line 283
    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    .line 285
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 286
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    .line 287
    new-instance v0, Lcom/android/nfc/P2pEventManager;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/P2pEventManager;-><init>(Landroid/content/Context;Lcom/android/nfc/P2pEventListener$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    .line 288
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    .line 289
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 290
    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 291
    iput-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    .line 292
    iput-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    .line 293
    const-string v0, "NfcServicePrefs"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 294
    iput-object p2, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 295
    iput p3, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultMiu:I

    .line 296
    iput p4, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultRwSize:I

    .line 297
    iput-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    .line 298
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefCallbackUid:I

    .line 299
    invoke-static {}, Lcom/android/nfc/ForegroundUtils;->getInstance()Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    .line 300
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/P2pLinkManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;

    .line 160
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mClientEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/nfc/P2pLinkManager;)Lcom/android/nfc/sneptest/DtaSnepClient;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;

    .line 160
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDtaSnepClient:Lcom/android/nfc/sneptest/DtaSnepClient;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/nfc/P2pLinkManager;Lcom/android/nfc/sneptest/DtaSnepClient;)Lcom/android/nfc/sneptest/DtaSnepClient;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;
    .param p1, "x1"    # Lcom/android/nfc/sneptest/DtaSnepClient;

    .line 160
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager;->mDtaSnepClient:Lcom/android/nfc/sneptest/DtaSnepClient;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/nfc/P2pLinkManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;

    .line 160
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/nfc/P2pLinkManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;

    .line 160
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mDtaMiu:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/nfc/P2pLinkManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;

    .line 160
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mDtaRwSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/nfc/P2pLinkManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;

    .line 160
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mTestCaseID:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/nfc/P2pLinkManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;

    .line 160
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mPutBeforeGet:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/nfc/P2pLinkManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;
    .param p1, "x1"    # Z

    .line 160
    iput-boolean p1, p0, Lcom/android/nfc/P2pLinkManager;->mPutBeforeGet:Z

    return p1
.end method

.method private isBeamDisabled(I)Z
    .locals 4
    .param p1, "uid"    # I

    .line 590
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 591
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 592
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    const-string v2, "no_outgoing_beam"

    .line 593
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 592
    invoke-virtual {v0, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    return v2
.end method

.method static linkStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 1252
    packed-switch p0, :pswitch_data_0

    .line 1260
    const-string v0, "<error>"

    return-object v0

    .line 1256
    :pswitch_0
    const-string v0, "LINK_STATE_DEBOUNCE"

    return-object v0

    .line 1258
    :pswitch_1
    const-string v0, "LINK_STATE_UP"

    return-object v0

    .line 1254
    :pswitch_2
    const-string v0, "LINK_STATE_DOWN"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onP2pSendConfirmed(Z)V
    .locals 3
    .param p1, "requireConfirmation"    # Z

    .line 1191
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onP2pSendConfirmed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    monitor-enter p0

    .line 1193
    :try_start_0
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v2, v0, :cond_0

    goto :goto_1

    .line 1197
    :cond_0
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1198
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v2, v0, :cond_1

    .line 1199
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    if-eqz v0, :cond_2

    .line 1200
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->sendNdefMessage()V

    goto :goto_0

    .line 1202
    :cond_1
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 1204
    const/16 v0, 0x1388

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V

    .line 1205
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pSendDebounce()V

    .line 1207
    :cond_2
    :goto_0
    monitor-exit p0

    .line 1208
    return-void

    .line 1195
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 1207
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

    .line 1235
    packed-switch p0, :pswitch_data_0

    .line 1247
    :pswitch_0
    const-string v0, "<error>"

    return-object v0

    .line 1245
    :pswitch_1
    const-string v0, "SEND_STATE_CANCELED"

    return-object v0

    .line 1243
    :pswitch_2
    const-string v0, "SEND_STATE_COMPLETE"

    return-object v0

    .line 1241
    :pswitch_3
    const-string v0, "SEND_STATE_SENDING"

    return-object v0

    .line 1239
    :pswitch_4
    const-string v0, "SEND_STATE_NEED_CONFIRMATION"

    return-object v0

    .line 1237
    :pswitch_5
    const-string v0, "SEND_STATE_NOTHING_TO_SEND"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method beamDefaultDisabled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 599
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 601
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_0

    goto :goto_0

    .line 604
    :cond_0
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "android.nfc.disable_beam_default"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 602
    :cond_1
    :goto_0
    return v0

    .line 605
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 606
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method cancelSendNdefMessage()V
    .locals 2

    .line 709
    monitor-enter p0

    .line 710
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$SendTask;->cancel(Z)Z

    .line 713
    :cond_0
    monitor-exit p0

    .line 714
    return-void

    .line 713
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method connectLlcpServices()V
    .locals 2

    .line 717
    monitor-enter p0

    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    if-eqz v0, :cond_0

    .line 719
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Still had a reference to mConnectTask!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_0
    new-instance v0, Lcom/android/nfc/P2pLinkManager$ConnectTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$ConnectTask;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    .line 722
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 723
    monitor-exit p0

    .line 724
    return-void

    .line 723
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

    .line 611
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

    .line 613
    .local v0, "appUri":Landroid/nfc/NdefRecord;
    invoke-static {p1}, Landroid/nfc/NdefRecord;->createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 614
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

    .line 390
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "disableDtaSnepClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDtaSnepClient:Lcom/android/nfc/sneptest/DtaSnepClient;

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mClientEnabled:Z

    .line 393
    return-void
.end method

.method public disableExtDtaSnepServer()V
    .locals 2

    .line 362
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Disabling Extended DTA Server"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServerRunning:Z

    if-nez v0, :cond_0

    .line 364
    return-void

    .line 365
    :cond_0
    monitor-enter p0

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServer:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    invoke-virtual {v0}, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->stop()V

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServer:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServerRunning:Z

    .line 369
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mServerEnabled:Z

    .line 371
    return-void

    .line 369
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

    .line 618
    monitor-enter p0

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->cancel(Z)Z

    .line 621
    iput-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushClient;->close()V

    .line 626
    iput-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v0, :cond_2

    .line 629
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepClient;->close()V

    .line 630
    iput-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    .line 632
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    if-eqz v0, :cond_3

    .line 633
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverClient;->close()V

    .line 634
    iput-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    .line 636
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    .line 637
    monitor-exit p0

    .line 638
    return-void

    .line 637
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

    .line 1265
    monitor-enter p0

    .line 1266
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

    .line 1267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsReceiveEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1268
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

    .line 1269
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

    .line 1271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCallbackNdef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMessageToSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUrisToSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1274
    monitor-exit p0

    .line 1275
    return-void

    .line 1274
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

    .line 307
    monitor-enter p0

    .line 309
    :try_start_0
    invoke-static {}, Lcom/android/nfc/NfcService;->isControlledByMdM()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/nfc/NfcService;->isSecSys()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    .line 311
    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    .line 312
    monitor-exit p0

    return-void

    .line 315
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 316
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer;->start()V

    .line 317
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushServer;->start()V

    .line 318
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverServer;->start()V

    .line 319
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v0, :cond_3

    .line 320
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 322
    :cond_1
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    .line 323
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "enableDisable: llcp deactivate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->onLlcpDeactivated()V

    .line 325
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer;->stop()V

    .line 326
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushServer;->stop()V

    .line 327
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverServer;->stop()V

    .line 328
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 331
    :cond_2
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServerRunning:Z

    if-eqz v0, :cond_3

    .line 332
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->disableExtDtaSnepServer()V

    .line 334
    :cond_3
    :goto_0
    iput-boolean p1, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    .line 335
    iput-boolean p2, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    .line 336
    monitor-exit p0

    .line 337
    return-void

    .line 336
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

    .line 377
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "enableDtaSnepClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mClientEnabled:Z

    .line 379
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager;->mServiceName:Ljava/lang/String;

    .line 380
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mServiceSap:I

    .line 381
    iput p2, p0, Lcom/android/nfc/P2pLinkManager;->mDtaMiu:I

    .line 382
    iput p3, p0, Lcom/android/nfc/P2pLinkManager;->mDtaRwSize:I

    .line 383
    iput p4, p0, Lcom/android/nfc/P2pLinkManager;->mTestCaseID:I

    .line 384
    return-void
.end method

.method public enableExtDtaSnepServer(Ljava/lang/String;IIII)V
    .locals 9
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceSap"    # I
    .param p3, "miu"    # I
    .param p4, "rwSize"    # I
    .param p5, "testCaseId"    # I

    .line 342
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Enabling Extended DTA Server"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager;->mServiceName:Ljava/lang/String;

    .line 344
    iput p2, p0, Lcom/android/nfc/P2pLinkManager;->mServiceSap:I

    .line 345
    iput p3, p0, Lcom/android/nfc/P2pLinkManager;->mDtaMiu:I

    .line 346
    iput p4, p0, Lcom/android/nfc/P2pLinkManager;->mDtaRwSize:I

    .line 347
    iput p5, p0, Lcom/android/nfc/P2pLinkManager;->mTestCaseID:I

    .line 348
    monitor-enter p0

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServer:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    if-nez v0, :cond_0

    .line 350
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

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServer:Lcom/android/nfc/sneptest/ExtDtaSnepServer;

    invoke-virtual {v0}, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->start()V

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mExtDtaSnepServerRunning:Z

    .line 354
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mServerEnabled:Z

    .line 356
    return-void

    .line 354
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1075
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 1170
    :pswitch_1
    monitor-enter p0

    .line 1171
    :try_start_0
    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 1173
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1176
    :cond_0
    iput v3, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1177
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onP2pHandoverBusy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pHandoverBusy()V

    .line 1179
    monitor-exit p0

    goto/16 :goto_4

    .line 1174
    :cond_1
    :goto_0
    monitor-exit p0

    goto/16 :goto_4

    .line 1179
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1087
    :pswitch_2
    monitor-enter p0

    .line 1090
    :try_start_1
    iput v3, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1091
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pTimeoutWaitingForLink()V

    .line 1092
    monitor-exit p0

    .line 1093
    goto/16 :goto_4

    .line 1092
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 1138
    :pswitch_3
    monitor-enter p0

    .line 1139
    :try_start_2
    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 1141
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 1144
    :cond_2
    iput v3, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1145
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onP2pHandoverNotSupported()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pHandoverNotSupported()V

    .line 1147
    monitor-exit p0

    .line 1148
    goto/16 :goto_4

    .line 1142
    :cond_3
    :goto_1
    monitor-exit p0

    goto/16 :goto_4

    .line 1147
    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 1082
    :pswitch_4
    monitor-enter p0

    .line 1083
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer;->stop()V

    .line 1084
    monitor-exit p0

    goto/16 :goto_4

    .line 1085
    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    .line 1077
    :pswitch_5
    monitor-enter p0

    .line 1078
    :try_start_4
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer;->start()V

    .line 1079
    monitor-exit p0

    goto/16 :goto_4

    .line 1080
    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    .line 1150
    :pswitch_6
    monitor-enter p0

    .line 1151
    :try_start_5
    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 1153
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v0, v3, :cond_6

    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v0, v1, :cond_4

    goto :goto_3

    .line 1156
    :cond_4
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1157
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1158
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onP2pSendComplete()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pSendComplete()V

    .line 1160
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v0, :cond_5

    .line 1162
    :try_start_6
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    iget-byte v1, p0, Lcom/android/nfc/P2pLinkManager;->mPeerLlcpVersion:B

    invoke-interface {v0, v1}, Landroid/nfc/IAppCallback;->onNdefPushComplete(B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1165
    goto :goto_2

    .line 1163
    :catch_0
    move-exception v0

    .line 1164
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v1, "NfcP2pLinkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed NDEF completed callback: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    monitor-exit p0

    .line 1168
    goto/16 :goto_4

    .line 1154
    :cond_6
    :goto_3
    monitor-exit p0

    goto/16 :goto_4

    .line 1167
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    .line 1110
    :pswitch_7
    monitor-enter p0

    .line 1111
    :try_start_8
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v0, v3, :cond_7

    .line 1112
    monitor-exit p0

    goto/16 :goto_4

    .line 1114
    :cond_7
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v0, v1, :cond_8

    .line 1115
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 1117
    :cond_8
    iput v3, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1118
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onP2pReceiveComplete()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/nfc/P2pEventListener;->onP2pReceiveComplete(Z)V

    .line 1120
    monitor-exit p0

    .line 1121
    goto :goto_4

    .line 1120
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    throw v0

    .line 1123
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/nfc/NdefMessage;

    .line 1124
    .local v0, "m":Landroid/nfc/NdefMessage;
    monitor-enter p0

    .line 1125
    :try_start_9
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v2, v3, :cond_9

    .line 1126
    monitor-exit p0

    goto :goto_4

    .line 1128
    :cond_9
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v2, v1, :cond_a

    .line 1129
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 1131
    :cond_a
    iput v3, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1132
    const-string v1, "NfcP2pLinkManager"

    const-string v2, "onP2pReceiveComplete()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v1, v3}, Lcom/android/nfc/P2pEventListener;->onP2pReceiveComplete(Z)V

    .line 1134
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService;->sendMockNdefTag(Landroid/nfc/NdefMessage;)V

    .line 1135
    monitor-exit p0

    .line 1136
    goto :goto_4

    .line 1135
    :catchall_7
    move-exception v1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    throw v1

    .line 1095
    .end local v0    # "m":Landroid/nfc/NdefMessage;
    :pswitch_9
    monitor-enter p0

    .line 1096
    :try_start_a
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    .line 1097
    monitor-exit p0

    goto :goto_4

    .line 1099
    :cond_b
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Debounce timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iput v3, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 1101
    iput v3, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1102
    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 1103
    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 1104
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onP2pOutOfRange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pOutOfRange()V

    .line 1106
    monitor-exit p0

    .line 1107
    goto :goto_4

    .line 1106
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    throw v0

    .line 1181
    :goto_4
    return v3

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

    .line 401
    monitor-enter p0

    .line 402
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

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onHandoverBusy()V
    .locals 2

    .line 692
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 693
    return-void
.end method

.method onHandoverUnsupported()V
    .locals 2

    .line 688
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 689
    return-void
.end method

.method public onLlcpActivated(B)V
    .locals 5
    .param p1, "peerLlcpVersion"    # B

    .line 455
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "LLCP activated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    monitor-enter p0

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer;->onLlcpActivated()V

    .line 461
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/nfc/P2pLinkManager;->mLastLlcpActivationTime:J

    .line 462
    iput-byte p1, p0, Lcom/android/nfc/P2pLinkManager;->mPeerLlcpVersion:B

    .line 463
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 496
    :pswitch_0
    iput v3, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 497
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v0, v3, :cond_2

    .line 500
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->connectLlcpServices()V

    .line 502
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 492
    :pswitch_1
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Duplicate onLlcpActivated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    monitor-exit p0

    return-void

    .line 465
    :pswitch_2
    const-string v0, "NfcP2pLinkManager"

    const-string v4, "onP2pInRange()"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pInRange()V

    .line 468
    iput v3, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 471
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 472
    iput v1, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 473
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 475
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->connectLlcpServices()V

    goto :goto_0

    .line 477
    :cond_3
    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 478
    invoke-virtual {p0, v2}, Lcom/android/nfc/P2pLinkManager;->prepareMessageToSend(Z)V

    .line 479
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 480
    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverDataParser;->isHandoverSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 482
    :cond_4
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->connectLlcpServices()V

    .line 483
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendFlags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    .line 484
    iput v1, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    goto :goto_0

    .line 486
    :cond_5
    iput v3, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 505
    :cond_6
    :goto_0
    monitor-exit p0

    .line 506
    return-void

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLlcpDeactivated()V
    .locals 3

    .line 644
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "LLCP deactivated."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    monitor-enter p0

    .line 646
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer;->onLlcpDeactivated()V

    .line 650
    :cond_0
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 657
    :pswitch_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 658
    const/4 v0, 0x0

    .line 659
    .local v0, "debounceTimeout":I
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    packed-switch v1, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 673
    :pswitch_2
    const/16 v0, 0xfa

    goto :goto_0

    .line 670
    :pswitch_3
    const/16 v0, 0x1f4

    .line 671
    goto :goto_0

    .line 667
    :pswitch_4
    const/16 v0, 0x1388

    .line 668
    goto :goto_0

    .line 664
    :pswitch_5
    const/16 v0, 0xbb8

    .line 665
    goto :goto_0

    .line 661
    :pswitch_6
    const/4 v0, 0x0

    .line 662
    nop

    .line 675
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V

    .line 676
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 677
    const-string v1, "NfcP2pLinkManager"

    const-string v2, "onP2pSendDebounce()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v1}, Lcom/android/nfc/P2pEventListener;->onP2pSendDebounce()V

    .line 680
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 681
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->disconnectLlcpServices()V

    .end local v0    # "debounceTimeout":I
    goto :goto_1

    .line 653
    :pswitch_7
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Duplicate onLlcpDectivated()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    nop

    .line 684
    :goto_1
    monitor-exit p0

    .line 685
    return-void

    .line 684
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onLlcpFirstPacketReceived()V
    .locals 5

    .line 512
    monitor-enter p0

    .line 513
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/nfc/P2pLinkManager;->mLastLlcpActivationTime:J

    sub-long/2addr v0, v2

    .line 514
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

    .line 515
    .end local v0    # "totalTime":J
    monitor-exit p0

    .line 516
    return-void

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onLlcpServicesConnected()V
    .locals 2

    .line 728
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onLlcpServicesConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    monitor-enter p0

    .line 730
    :try_start_0
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 731
    monitor-exit p0

    return-void

    .line 733
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    .line 734
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v0, v1, :cond_1

    .line 735
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onP2pSendConfirmationRequested()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pSendConfirmationRequested()V

    goto :goto_0

    .line 737
    :cond_1
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 738
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pResumeSend()V

    .line 739
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->sendNdefMessage()V

    .line 743
    :cond_2
    :goto_0
    monitor-exit p0

    .line 744
    return-void

    .line 743
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

    .line 422
    monitor-enter p0

    .line 423
    :try_start_0
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 424
    monitor-exit p0

    return-void

    .line 426
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

    .line 428
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/P2pLinkManager;->prepareMessageToSend(Z)V

    goto :goto_0

    .line 430
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 431
    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 433
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 435
    iget-object v0, p1, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 436
    iget-object v0, p1, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    goto :goto_1

    .line 437
    :cond_2
    iget-object v0, p1, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    if-eqz v0, :cond_3

    .line 438
    iget-object v0, p1, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 440
    :cond_3
    :goto_1
    iget-object v0, p1, Landroid/nfc/BeamShareData;->userHandle:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUserHandle:Landroid/os/UserHandle;

    .line 442
    :cond_4
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 443
    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverDataParser;->isHandoverSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 444
    :cond_5
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 445
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pNfcTapRequested()V

    .line 446
    const/16 v0, 0x9

    const/16 v1, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V

    .line 448
    :cond_6
    monitor-exit p0

    .line 449
    return-void

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onP2pCanceled()V
    .locals 3

    .line 1213
    monitor-enter p0

    .line 1214
    const/4 v0, 0x6

    :try_start_0
    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1215
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1218
    :cond_0
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1221
    const/16 v0, 0xfa

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/P2pLinkManager;->scheduleTimeoutLocked(II)V

    .line 1225
    :cond_1
    :goto_0
    monitor-exit p0

    .line 1226
    return-void

    .line 1225
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onP2pSendConfirmed()V
    .locals 1

    .line 1187
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/nfc/P2pLinkManager;->onP2pSendConfirmed(Z)V

    .line 1188
    return-void
.end method

.method onReceiveComplete(Landroid/nfc/NdefMessage;)V
    .locals 2
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .line 1070
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1071
    return-void
.end method

.method onReceiveHandover()V
    .locals 2

    .line 1065
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1066
    return-void
.end method

.method onSendComplete(Landroid/nfc/NdefMessage;J)V
    .locals 2
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .param p2, "elapsedRealtime"    # J

    .line 697
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 698
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 520
    monitor-enter p0

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    const-string v1, "android"

    const/4 v2, 0x0

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 523
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    goto :goto_0

    .line 527
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    const-string v1, "NfcP2pLinkManager"

    const-string v2, "Failed to retrieve PackageManager for user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    monitor-exit p0

    .line 528
    return-void

    .line 527
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method prepareMessageToSend(Z)V
    .locals 6
    .param p1, "generatePlayLink"    # Z

    .line 531
    monitor-enter p0

    .line 532
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 533
    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 534
    iget-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    if-nez v1, :cond_0

    .line 535
    monitor-exit p0

    return-void

    .line 538
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    invoke-virtual {v1}, Lcom/android/nfc/ForegroundUtils;->getForegroundUids()Ljava/util/List;

    move-result-object v1

    .line 539
    .local v1, "foregroundUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 540
    const-string v0, "NfcP2pLinkManager"

    const-string v2, "Could not determine foreground UID."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    monitor-exit p0

    return-void

    .line 544
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

    .line 545
    const-string v0, "NfcP2pLinkManager"

    const-string v2, "Beam is disabled by policy."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    monitor-exit p0

    return-void

    .line 549
    :cond_2
    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    if-eqz v3, :cond_4

    .line 550
    iget v3, p0, Lcom/android/nfc/P2pLinkManager;->mNdefCallbackUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 552
    :try_start_1
    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    iget-byte v4, p0, Lcom/android/nfc/P2pLinkManager;->mPeerLlcpVersion:B

    invoke-interface {v3, v4}, Landroid/nfc/IAppCallback;->createBeamShareData(B)Landroid/nfc/BeamShareData;

    move-result-object v3

    .line 553
    .local v3, "shareData":Landroid/nfc/BeamShareData;
    iget-object v4, v3, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 554
    iget-object v4, v3, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 555
    iget-object v4, v3, Landroid/nfc/BeamShareData;->userHandle:Landroid/os/UserHandle;

    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mUserHandle:Landroid/os/UserHandle;

    .line 556
    iget v4, v3, Landroid/nfc/BeamShareData;->flags:I

    iput v4, p0, Lcom/android/nfc/P2pLinkManager;->mSendFlags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 557
    :try_start_2
    monitor-exit p0

    return-void

    .line 558
    .end local v3    # "shareData":Landroid/nfc/BeamShareData;
    :catch_0
    move-exception v3

    .line 559
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "NfcP2pLinkManager"

    const-string v5, "Failed NDEF callback: "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 565
    :cond_3
    const-string v3, "NfcP2pLinkManager"

    const-string v4, "Last registered callback is not running in the foreground."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
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

    .line 572
    .local v3, "pkgs":[Ljava/lang/String;
    if-eqz v3, :cond_7

    array-length v4, v3

    const/4 v5, 0x1

    if-lt v4, v5, :cond_7

    .line 573
    if-eqz p1, :cond_6

    aget-object v4, v3, v2

    invoke-virtual {p0, v4}, Lcom/android/nfc/P2pLinkManager;->beamDefaultDisabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 578
    :cond_5
    aget-object v4, v3, v2

    invoke-virtual {p0, v4}, Lcom/android/nfc/P2pLinkManager;->createDefaultNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 579
    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 580
    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendFlags:I

    goto :goto_2

    .line 574
    :cond_6
    :goto_1
    const-string v2, "NfcP2pLinkManager"

    const-string v4, "Disabling default Beam behavior"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 576
    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 584
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

    .line 585
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

    .line 586
    .end local v1    # "foregroundUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "pkgs":[Ljava/lang/String;
    monitor-exit p0

    .line 587
    return-void

    .line 586
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

    .line 1230
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1231
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1232
    return-void
.end method

.method sendNdefMessage()V
    .locals 2

    .line 701
    monitor-enter p0

    .line 702
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 703
    new-instance v0, Lcom/android/nfc/P2pLinkManager$SendTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$SendTask;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 704
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager$SendTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 705
    monitor-exit p0

    .line 706
    return-void

    .line 705
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

    .line 414
    monitor-enter p0

    .line 415
    :try_start_0
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    .line 416
    iput p2, p0, Lcom/android/nfc/P2pLinkManager;->mNdefCallbackUid:I

    .line 417
    monitor-exit p0

    .line 418
    return-void

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
