.class public Lcom/qualcomm/location/RilInfoMonitor;
.super Lcom/qualcomm/location/MonitorInterface$Monitor;
.source "RilInfoMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/location/RilInfoMonitor$RilPhoneStateListener;
    }
.end annotation


# static fields
.field private static final MSG_CID_INJECT:I = 0x1

.field private static final MSG_MAX:I = 0x5

.field private static final MSG_OOS_INJECT:I = 0x2

.field private static final MSG_SMS_INJECT:I = 0x3

.field private static final MSG_SMS_MULTI_INJECT:I = 0x4

.field private static final MSG_START:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RilInfoMonitor"

.field private static final VERBOSE_DBG:Z


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mListener:Lcom/qualcomm/location/RilInfoMonitor$RilPhoneStateListener;

.field private mTelMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-string v0, "RilInfoMonitor"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/location/RilInfoMonitor;->VERBOSE_DBG:Z

    .line 247
    invoke-static {}, Lcom/qualcomm/location/RilInfoMonitor;->native_rm_class_init()V

    .line 248
    return-void
.end method

.method public constructor <init>(Lcom/qualcomm/location/MonitorInterface;II)V
    .locals 2
    .param p1, "service"    # Lcom/qualcomm/location/MonitorInterface;
    .param p2, "msgIdBase"    # I
    .param p3, "config"    # I

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/location/MonitorInterface$Monitor;-><init>(Lcom/qualcomm/location/MonitorInterface;I)V

    .line 45
    new-instance v0, Lcom/qualcomm/location/RilInfoMonitor$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/RilInfoMonitor$1;-><init>(Lcom/qualcomm/location/RilInfoMonitor;)V

    iput-object v0, p0, Lcom/qualcomm/location/RilInfoMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    new-instance v0, Lcom/qualcomm/location/RilInfoMonitor$RilPhoneStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/location/RilInfoMonitor$RilPhoneStateListener;-><init>(Lcom/qualcomm/location/RilInfoMonitor;Lcom/qualcomm/location/RilInfoMonitor$1;)V

    iput-object v0, p0, Lcom/qualcomm/location/RilInfoMonitor;->mListener:Lcom/qualcomm/location/RilInfoMonitor$RilPhoneStateListener;

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3, v0, v1}, Lcom/qualcomm/location/RilInfoMonitor;->sendMessage(IIILjava/lang/Object;)V

    .line 134
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 33
    invoke-static {p0}, Lcom/qualcomm/location/RilInfoMonitor;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/location/RilInfoMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/RilInfoMonitor;

    .line 33
    invoke-direct {p0}, Lcom/qualcomm/location/RilInfoMonitor;->injectCellInfo()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 33
    sget-boolean v0, Lcom/qualcomm/location/RilInfoMonitor;->VERBOSE_DBG:Z

    return v0
.end method

.method private getRoaming()Z
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/qualcomm/location/RilInfoMonitor;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 257
    .local v0, "roaming":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNetworkRoaming() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/location/RilInfoMonitor;->logv(Ljava/lang/String;)V

    .line 258
    return v0
.end method

.method private injectCellInfo()V
    .locals 7

    .line 68
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 69
    .local v0, "dds":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    if-nez v1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/qualcomm/location/RilInfoMonitor;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    .line 71
    .local v1, "cellInfoValue":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneId 0 is DDS. CellInfoValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/location/RilInfoMonitor;->logv(Ljava/lang/String;)V

    .line 72
    if-eqz v1, :cond_1

    .line 73
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    .line 74
    .local v3, "ci":Landroid/telephony/CellInfo;
    instance-of v4, v3, Landroid/telephony/CellInfoGsm;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    const-string v2, "ci instanceof CellInfoGsm && ci.isRegistered()Inject will happen."

    invoke-static {v2}, Lcom/qualcomm/location/RilInfoMonitor;->logv(Ljava/lang/String;)V

    .line 77
    move-object v2, v3

    check-cast v2, Landroid/telephony/CellInfoGsm;

    .line 78
    .local v2, "gsmCell":Landroid/telephony/CellInfoGsm;
    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v4

    .line 80
    .local v4, "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    if-eqz v4, :cond_2

    .line 81
    const-string v5, "sendMessage(MSG_CID_INJECT, 0, 0, cellIdentityGsm)"

    invoke-static {v5}, Lcom/qualcomm/location/RilInfoMonitor;->logv(Ljava/lang/String;)V

    .line 82
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, v6, v4}, Lcom/qualcomm/location/RilInfoMonitor;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_1

    .line 86
    .end local v2    # "gsmCell":Landroid/telephony/CellInfoGsm;
    .end local v3    # "ci":Landroid/telephony/CellInfo;
    .end local v4    # "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    :cond_0
    goto :goto_0

    .line 88
    :cond_1
    const-string v2, "cellInfoValue == null"

    invoke-static {v2}, Lcom/qualcomm/location/RilInfoMonitor;->logv(Ljava/lang/String;)V

    .line 91
    .end local v1    # "cellInfoValue":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :cond_2
    :goto_1
    return-void
.end method

.method private static logv(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 262
    sget-boolean v0, Lcom/qualcomm/location/RilInfoMonitor;->VERBOSE_DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "RilInfoMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    return-void
.end method

.method private static native native_rm_class_init()V
.end method

.method private native native_rm_init()V
.end method

.method private startMonitor(I)V
    .locals 6
    .param p1, "config"    # I

    .line 137
    iget-object v0, p0, Lcom/qualcomm/location/RilInfoMonitor;->mMoniterService:Lcom/qualcomm/location/MonitorInterface;

    .line 138
    invoke-interface {v0}, Lcom/qualcomm/location/MonitorInterface;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/qualcomm/location/RilInfoMonitor;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 139
    const/4 v0, 0x0

    .line 141
    .local v0, "mask":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 157
    :pswitch_0
    const-string v1, "RilInfoMonitor"

    const-string v2, "nonSGLTE device with ES SUPL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/16 v0, 0x20

    goto :goto_0

    .line 150
    :pswitch_1
    const-string v1, "RilInfoMonitor"

    const-string v2, "SGLTE with ES SUPL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/16 v0, 0x31

    .line 154
    goto :goto_0

    .line 144
    :pswitch_2
    const-string v1, "RilInfoMonitor"

    const-string v2, "SGLTE without ES SUPL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/16 v0, 0x11

    .line 147
    nop

    .line 162
    :goto_0
    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p0, Lcom/qualcomm/location/RilInfoMonitor;->mTelMgr:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/qualcomm/location/RilInfoMonitor;->mListener:Lcom/qualcomm/location/RilInfoMonitor$RilPhoneStateListener;

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 164
    and-int/lit8 v1, v0, 0x11

    if-eqz v1, :cond_0

    .line 166
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 167
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v2, "sms"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 169
    const-string v2, "localhost"

    const-string v3, "7275"

    invoke-virtual {v1, v2, v3}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Lcom/qualcomm/location/RilInfoMonitor;->mMoniterService:Lcom/qualcomm/location/MonitorInterface;

    invoke-interface {v2}, Lcom/qualcomm/location/MonitorInterface;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/location/RilInfoMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    .line 173
    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    :try_start_0
    const-string v2, "application/vnd.omaloc-supl-init"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    goto :goto_1

    .line 176
    :catch_0
    move-exception v2

    .line 177
    .local v2, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v3, "RilInfoMonitor"

    const-string v4, "Malformed SUPL init mime type"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v2    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :goto_1
    iget-object v2, p0, Lcom/qualcomm/location/RilInfoMonitor;->mMoniterService:Lcom/qualcomm/location/MonitorInterface;

    invoke-interface {v2}, Lcom/qualcomm/location/MonitorInterface;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/location/RilInfoMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    iget-object v2, p0, Lcom/qualcomm/location/RilInfoMonitor;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    const-string v2, "Multi Sim config detected"

    invoke-static {v2}, Lcom/qualcomm/location/RilInfoMonitor;->logv(Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/qualcomm/location/RilInfoMonitor;->mMoniterService:Lcom/qualcomm/location/MonitorInterface;

    invoke-interface {v2}, Lcom/qualcomm/location/MonitorInterface;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/location/RilInfoMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    invoke-direct {p0}, Lcom/qualcomm/location/RilInfoMonitor;->injectCellInfo()V

    .line 192
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getNumOfMessages()I
    .locals 1

    .line 252
    const/4 v0, 0x5

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 196
    iget v0, p1, Landroid/os/Message;->what:I

    .line 197
    .local v0, "message":I
    const-string v1, "RilInfoMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage what - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 231
    :pswitch_0
    goto/16 :goto_0

    .line 227
    :pswitch_1
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    .line 228
    .local v1, "data":[B
    array-length v2, v1

    invoke-virtual {p0, v1, v2}, Lcom/qualcomm/location/RilInfoMonitor;->native_rm_ni_supl_init([BI)V

    .line 229
    goto/16 :goto_0

    .line 224
    .end local v1    # "data":[B
    :pswitch_2
    invoke-virtual {p0}, Lcom/qualcomm/location/RilInfoMonitor;->native_rm_oos_inform()V

    .line 225
    goto/16 :goto_0

    .line 206
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/CellIdentityGsm;

    .line 207
    .local v1, "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v2

    .line 208
    .local v2, "cid":I
    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v3

    .line 209
    .local v3, "lac":I
    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v4

    move v9, v4

    .line 210
    .local v9, "mnc":I
    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v4

    move v10, v4

    .line 212
    .local v10, "mcc":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 213
    const-string v4, "GSM is OOS"

    invoke-static {v4}, Lcom/qualcomm/location/RilInfoMonitor;->logv(Ljava/lang/String;)V

    .line 214
    const/4 v3, -0x1

    .line 216
    .end local v3    # "lac":I
    .local v11, "lac":I
    :cond_0
    move v11, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCellInfoChanged: cid - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; lac - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; mnc - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; mcc - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/location/RilInfoMonitor;->logv(Ljava/lang/String;)V

    .line 219
    if-ltz v9, :cond_1

    .line 220
    invoke-direct {p0}, Lcom/qualcomm/location/RilInfoMonitor;->getRoaming()Z

    move-result v8

    move-object v3, p0

    move v4, v2

    move v5, v11

    move v6, v9

    move v7, v10

    invoke-virtual/range {v3 .. v8}, Lcom/qualcomm/location/RilInfoMonitor;->native_rm_cinfo_inject(IIIIZ)V

    goto :goto_0

    .line 202
    .end local v1    # "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    .end local v2    # "cid":I
    .end local v9    # "mnc":I
    .end local v10    # "mcc":I
    .end local v11    # "lac":I
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/qualcomm/location/RilInfoMonitor;->startMonitor(I)V

    .line 203
    invoke-direct {p0}, Lcom/qualcomm/location/RilInfoMonitor;->native_rm_init()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    goto :goto_0

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, "cce":Ljava/lang/ClassCastException;
    const-string v2, "RilInfoMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClassCastException on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "cce":Ljava/lang/ClassCastException;
    goto :goto_1

    .line 237
    :cond_1
    :goto_0
    nop

    .line 238
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public native native_rm_cinfo_inject(IIIIZ)V
.end method

.method public native native_rm_ni_supl_init([BI)V
.end method

.method public native native_rm_oos_inform()V
.end method
