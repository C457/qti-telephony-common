.class public Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
.super Landroid/app/Activity;
.source "ConfirmConnectToWifiNetworkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final ENABLE_WIFI_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private mEnableWifiInProgress:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 130
    new-instance v0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;

    invoke-direct {v0, p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;-><init>(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V

    iput-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    .line 17
    invoke-direct {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getAndClearEnableWifiInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    .line 17
    invoke-direct {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->showFailToast()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    .line 17
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/net/wifi/WifiManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager;

    .line 17
    invoke-direct {p0, p1}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->doConnect(Landroid/net/wifi/WifiManager;)V

    return-void
.end method

.method private doConnect(Landroid/net/wifi/WifiManager;)V
    .locals 2
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .line 85
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 86
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 88
    .local v0, "networkId":I
    if-gez v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->showFailToast()V

    goto :goto_0

    .line 92
    :cond_0
    new-instance v1, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;

    invoke-direct {v1, p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;-><init>(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 106
    :goto_0
    invoke-virtual {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->finish()V

    .line 107
    return-void
.end method

.method private getAndClearEnableWifiInProgress()Z
    .locals 2

    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    iget-boolean v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mEnableWifiInProgress:Z

    .line 154
    .local v0, "enableWifiInProgress":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mEnableWifiInProgress:Z

    .line 155
    monitor-exit p0

    .line 157
    return v0

    .line 155
    .end local v0    # "enableWifiInProgress":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private showFailToast()V
    .locals 2

    .line 111
    const v0, 0x7f06002b

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 113
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 61
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 63
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 65
    iput-boolean v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mEnableWifiInProgress:Z

    .line 67
    iget-object v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$1;

    invoke-direct {v2, p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$1;-><init>(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 78
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->doConnect(Landroid/net/wifi/WifiManager;)V

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 82
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 29
    invoke-virtual {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 30
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.nfc.WIFI_CONFIG_EXTRA"

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iput-object v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 33
    iget-object v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "printableSsid":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 35
    const v3, 0x7f06002d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 37
    invoke-virtual {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 39
    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 40
    const/4 v3, 0x0

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 41
    const v4, 0x7f06002a

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 42
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 44
    iput-boolean v5, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mEnableWifiInProgress:Z

    .line 45
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mHandler:Landroid/os/Handler;

    .line 47
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 48
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    iget-object v3, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    iget-object v3, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    iget-object v3, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 126
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 128
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 117
    iget-boolean v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mEnableWifiInProgress:Z

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->finish()V

    .line 120
    :cond_0
    return-void
.end method
