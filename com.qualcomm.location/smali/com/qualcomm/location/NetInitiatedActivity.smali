.class public Lcom/qualcomm/location/NetInitiatedActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "NetInitiatedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final DEBUG:Z = true

.field private static final GPS_NO_RESPONSE_TIME_OUT:I = 0x1

.field private static final NEGATIVE_BUTTON:I = -0x2

.field private static final POSITIVE_BUTTON:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LocSvc_NiA"

.field private static final VERBOSE:Z = false


# instance fields
.field private default_response:I

.field private default_response_timeout:I

.field private final mHandler:Landroid/os/Handler;

.field private mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mNetInitiatedReceiver:Landroid/content/BroadcastReceiver;

.field private notificationId:I

.field private timeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/location/NetInitiatedActivity;->notificationId:I

    .line 65
    iput v0, p0, Lcom/qualcomm/location/NetInitiatedActivity;->timeout:I

    .line 66
    iput v0, p0, Lcom/qualcomm/location/NetInitiatedActivity;->default_response:I

    .line 67
    const/4 v0, 0x6

    iput v0, p0, Lcom/qualcomm/location/NetInitiatedActivity;->default_response_timeout:I

    .line 72
    new-instance v0, Lcom/qualcomm/location/NetInitiatedActivity$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/NetInitiatedActivity$1;-><init>(Lcom/qualcomm/location/NetInitiatedActivity;)V

    iput-object v0, p0, Lcom/qualcomm/location/NetInitiatedActivity;->mNetInitiatedReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    new-instance v0, Lcom/qualcomm/location/NetInitiatedActivity$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/NetInitiatedActivity$2;-><init>(Lcom/qualcomm/location/NetInitiatedActivity;)V

    iput-object v0, p0, Lcom/qualcomm/location/NetInitiatedActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/location/NetInitiatedActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/NetInitiatedActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 52
    invoke-direct {p0, p1}, Lcom/qualcomm/location/NetInitiatedActivity;->handleNIVerify(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/location/NetInitiatedActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/NetInitiatedActivity;

    .line 52
    iget v0, p0, Lcom/qualcomm/location/NetInitiatedActivity;->notificationId:I

    return v0
.end method

.method static synthetic access$200(Lcom/qualcomm/location/NetInitiatedActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/NetInitiatedActivity;

    .line 52
    iget v0, p0, Lcom/qualcomm/location/NetInitiatedActivity;->default_response:I

    return v0
.end method

.method static synthetic access$300(Lcom/qualcomm/location/NetInitiatedActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/NetInitiatedActivity;
    .param p1, "x1"    # I

    .line 52
    invoke-direct {p0, p1}, Lcom/qualcomm/location/NetInitiatedActivity;->sendUserResponse(I)V

    return-void
.end method

.method private handleNIVerify(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 175
    const-string v0, "notif_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 176
    .local v0, "notifId":I
    iput v0, p0, Lcom/qualcomm/location/NetInitiatedActivity;->notificationId:I

    .line 178
    const-string v1, "LocSvc_NiA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNIVerify action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method private sendUserResponse(I)V
    .locals 3
    .param p1, "response"    # I

    .line 161
    const-string v0, "LocSvc_NiA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendUserResponse, response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/location/NetInitiatedActivity;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    if-nez v0, :cond_0

    .line 164
    const-string v0, "LocSvc_NiA"

    const-string v1, "mNetInitiatedListener is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/NetInitiatedActivity;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget v1, p0, Lcom/qualcomm/location/NetInitiatedActivity;->notificationId:I

    invoke-interface {v0, v1, p1}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    goto :goto_1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocSvc_NiA"

    const-string v2, "RemoteException in sendNiResponse"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private showNIError()V
    .locals 2

    .line 182
    const-string v0, "NI error"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 184
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 147
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 148
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/qualcomm/location/NetInitiatedActivity;->sendUserResponse(I)V

    .line 150
    :cond_0
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 151
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/qualcomm/location/NetInitiatedActivity;->sendUserResponse(I)V

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/qualcomm/location/NetInitiatedActivity;->finish()V

    .line 156
    iput v0, p0, Lcom/qualcomm/location/NetInitiatedActivity;->notificationId:I

    .line 157
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 99
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/qualcomm/location/NetInitiatedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/qualcomm/location/NetInitiatedActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 104
    .local v1, "p":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/qualcomm/location/NetInitiatedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 106
    .local v2, "context":Landroid/content/Context;
    const v3, 0x108034d

    iput v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 107
    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 108
    const-string v3, "message"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 109
    const v3, 0x104027b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 110
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 111
    const v3, 0x104027a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 112
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 114
    sget-object v3, Lcom/qualcomm/location/GpsNetInitiatedHandler;->obj:Lcom/qualcomm/location/GpsNetInitiatedHandler;

    if-nez v3, :cond_0

    .line 115
    const-string v3, "LocSvc_NiA"

    const-string v4, "GpsNetInitiatedHandler is NULL!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :cond_0
    sget-object v3, Lcom/qualcomm/location/GpsNetInitiatedHandler;->obj:Lcom/qualcomm/location/GpsNetInitiatedHandler;

    invoke-virtual {v3}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->getNetInitiatedListener()Landroid/location/INetInitiatedListener;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/location/NetInitiatedActivity;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 120
    :goto_0
    const-string v3, "notif_id"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/qualcomm/location/NetInitiatedActivity;->notificationId:I

    .line 121
    const-string v3, "timeout"

    iget v4, p0, Lcom/qualcomm/location/NetInitiatedActivity;->default_response_timeout:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/qualcomm/location/NetInitiatedActivity;->timeout:I

    .line 122
    const-string v3, "default_resp"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/qualcomm/location/NetInitiatedActivity;->default_response:I

    .line 123
    const-string v3, "LocSvc_NiA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate() : notificationId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/qualcomm/location/NetInitiatedActivity;->notificationId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " timeout: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/qualcomm/location/NetInitiatedActivity;->timeout:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " default_response:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/qualcomm/location/NetInitiatedActivity;->default_response:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v3, p0, Lcom/qualcomm/location/NetInitiatedActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/qualcomm/location/NetInitiatedActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget v5, p0, Lcom/qualcomm/location/NetInitiatedActivity;->timeout:I

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 126
    invoke-virtual {p0}, Lcom/qualcomm/location/NetInitiatedActivity;->setupAlert()V

    .line 127
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 138
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 139
    const-string v0, "LocSvc_NiA"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/qualcomm/location/NetInitiatedActivity;->mNetInitiatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/qualcomm/location/NetInitiatedActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 131
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 132
    const-string v0, "LocSvc_NiA"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/qualcomm/location/NetInitiatedActivity;->mNetInitiatedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.NETWORK_INITIATED_VERIFY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/location/NetInitiatedActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    return-void
.end method
