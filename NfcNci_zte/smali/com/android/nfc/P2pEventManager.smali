.class public Lcom/android/nfc/P2pEventManager;
.super Ljava/lang/Object;
.source "P2pEventManager.java"

# interfaces
.implements Lcom/android/nfc/P2pEventListener;
.implements Lcom/android/nfc/beam/SendUi$Callback;


# static fields
.field static final DBG:Z = true

.field static final TAG:Ljava/lang/String; = "NfcP2pEventManager"

.field static final VIBRATION_PATTERN:[J


# instance fields
.field final mCallback:Lcom/android/nfc/P2pEventListener$Callback;

.field final mContext:Landroid/content/Context;

.field mInDebounce:Z

.field mNdefReceived:Z

.field mNdefSent:Z

.field final mNfcService:Lcom/android/nfc/NfcService;

.field final mNotificationManager:Landroid/app/NotificationManager;

.field final mSendUi:Lcom/android/nfc/beam/SendUi;

.field mSending:Z

.field final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x64
        0x2710
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/P2pEventListener$Callback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/P2pEventListener$Callback;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    .line 49
    iput-object p1, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/nfc/P2pEventManager;->mCallback:Lcom/android/nfc/P2pEventListener$Callback;

    .line 51
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    .line 52
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 56
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    .line 58
    .local v0, "uiModeType":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    goto :goto_0

    .line 64
    :cond_0
    new-instance v1, Lcom/android/nfc/beam/SendUi;

    invoke-direct {v1, p1, p0}, Lcom/android/nfc/beam/SendUi;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/SendUi$Callback;)V

    iput-object v1, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    .line 66
    :goto_0
    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 185
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mCallback:Lcom/android/nfc/P2pEventListener$Callback;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener$Callback;->onP2pCanceled()V

    .line 186
    return-void
.end method

.method public onP2pHandoverBusy()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 135
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 136
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    const v2, 0x7f06000e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/nfc/beam/SendUi;->finishAndToast(ILjava/lang/String;)V

    .line 137
    iput-boolean v2, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 138
    iput-boolean v2, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 139
    return-void
.end method

.method public onP2pHandoverNotSupported()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 125
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 126
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mContext:Landroid/content/Context;

    .line 127
    const v2, 0x7f06000c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/nfc/beam/SendUi;->finishAndToast(ILjava/lang/String;)V

    .line 128
    iput-boolean v2, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 129
    iput-boolean v2, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 130
    return-void
.end method

.method public onP2pInRange()V
    .locals 1

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    .line 72
    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 74
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->takeScreenshot()V

    .line 77
    :cond_0
    return-void
.end method

.method public onP2pNfcTapRequested()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 82
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 83
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    .line 84
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 86
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 87
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->takeScreenshot()V

    .line 89
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi;->showPreSend(Z)V

    .line 91
    :cond_0
    return-void
.end method

.method public onP2pOutOfRange()V
    .locals 3

    .line 160
    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 162
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 164
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 167
    :cond_1
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 168
    return-void
.end method

.method public onP2pReceiveComplete(Z)V
    .locals 3
    .param p1, "playSound"    # Z

    .line 143
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 144
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 155
    :cond_1
    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mNdefReceived:Z

    .line 156
    return-void
.end method

.method public onP2pResumeSend()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 200
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 201
    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->showStartSend()V

    .line 206
    :cond_0
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 207
    return-void
.end method

.method public onP2pSendComplete()V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 114
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v2, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 115
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 118
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 119
    iput-boolean v1, p0, Lcom/android/nfc/P2pEventManager;->mNdefSent:Z

    .line 120
    return-void
.end method

.method public onP2pSendConfirmationRequested()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 103
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v2, Lcom/android/nfc/P2pEventManager;->VIBRATION_PATTERN:[J

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 104
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi;->showPreSend(Z)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mCallback:Lcom/android/nfc/P2pEventListener$Callback;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener$Callback;->onP2pSendConfirmed()V

    .line 109
    :goto_0
    return-void
.end method

.method public onP2pSendDebounce()V
    .locals 2

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mInDebounce:Z

    .line 191
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 192
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->showSendHint()V

    .line 195
    :cond_0
    return-void
.end method

.method public onP2pTimeoutWaitingForLink()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 98
    :cond_0
    return-void
.end method

.method public onSendConfirmed()V
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->showStartSend()V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager;->mCallback:Lcom/android/nfc/P2pEventListener$Callback;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener$Callback;->onP2pSendConfirmed()V

    .line 178
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/P2pEventManager;->mSending:Z

    .line 180
    return-void
.end method
