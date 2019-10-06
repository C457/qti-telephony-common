.class public Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
.super Lorg/codeaurora/internal/IExtTelephony$Stub;
.source "ExtTelephonyServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsHandler;,
        Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsSubscriptionsChangedListener;
    }
.end annotation


# static fields
.field private static final ACTION_ACTIVATE:I = 0x1

.field private static final ACTION_CARD_NOT_PRESENT:I = -0x3

.field private static final ACTION_DEACTIVATE:I = 0x0

.field private static final ACTION_INVALID:I = -0x4

.field private static final ACTION_STILL_ACTIVATE:I = -0x1

.field private static final ACTION_STILL_DEACTIVATE:I = -0x2

.field private static final CARD_NOT_PRESENT:I = -0x2

.field private static final CONFIG_CURRENT_PRIMARY_SUB:Ljava/lang/String; = "config_current_primary_sub"

.field private static final DBG:Z = true

.field protected static final EVENT_DIALOG_DISMISS:I = 0x2

.field protected static final EVENT_SUBSCRIPTION_CHANGED:I = 0x1

.field private static final GENERIC_FAILURE:I = -0x1

.field private static final INVALID_STATE:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ExtTelephonyServiceImpl"

.field private static final NOT_PROVISIONED:I = 0x0

.field private static final NOT_PROVISIONED_AND_DISABLE:I = -0x3

.field private static final PROVISIONED:I = 0x1

.field private static final SLOT_1:I = 0x0

.field private static final SLOT_2:I = 0x1

.field private static final SLOT_MAX:I = 0x2

.field private static final SUCCESS:I = 0x0

.field private static final TELEPHONY_SERVICE_NAME:Ljava/lang/String; = "extphone"

.field private static mContext:Landroid/content/Context;

.field private static final mHandlerThread:Landroid/os/HandlerThread;

.field private static mLastPrivisonState:[I

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;


# instance fields
.field private mCardProvisioner:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDsda:Lorg/codeaurora/internal/IDsda;

.field protected mHandler:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsHandler;

.field private final mLock:Ljava/lang/Object;

.field protected final mOnSubscriptionsChangedListener:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsSubscriptionsChangedListener;

.field private mQtiSmscHelper:Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    .line 115
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mLastPrivisonState:[I

    .line 117
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExtTsHandlerLoader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .line 306
    invoke-direct {p0}, Lorg/codeaurora/internal/IExtTelephony$Stub;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    .line 110
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mHandler:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsHandler;

    .line 111
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mLock:Ljava/lang/Object;

    .line 113
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mDialog:Landroid/app/AlertDialog;

    .line 119
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsSubscriptionsChangedListener;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsSubscriptionsChangedListener;-><init>(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mOnSubscriptionsChangedListener:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsSubscriptionsChangedListener;

    .line 469
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mDsda:Lorg/codeaurora/internal/IDsda;

    .line 307
    const-string v0, "init constructor "

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    .line 312
    const-string v0, "extphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 313
    const-string v0, "extphone"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 315
    :cond_0
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;

    invoke-direct {v0}, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mQtiSmscHelper:Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;

    .line 318
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->needDeactiveCdmaPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 320
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsHandler;

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsHandler;-><init>(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mHandler:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsHandler;

    .line 321
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mOnSubscriptionsChangedListener:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsSubscriptionsChangedListener;

    .line 322
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 325
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    .line 73
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->needDeactiveCdmaPhone()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    .line 73
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->handleSubscriptionChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    .param p1, "x1"    # Z

    .line 73
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->removeDeactiveCdmaDiag(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    .line 73
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    .locals 2

    .line 300
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    if-nez v0, :cond_0

    .line 301
    const-string v0, "ExtTelephonyServiceImpl"

    const-string v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    return-object v0
.end method

.method private getUserPreferredPhoneActive(I)I
    .locals 4
    .param p1, "slot"    # I

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUserPreferredPhoneActive: slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 384
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->isValidSlot(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 385
    return v1

    .line 387
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user_preferred_phone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_active"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 389
    .local v0, "slot_active":I
    return v0
.end method

.method private handleSubscriptionChanged()V
    .locals 13

    .line 159
    const-string v0, "handleSubscriptionChanged: "

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "provision":I
    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 162
    .local v2, "pref_active":[I
    new-array v3, v1, [I

    fill-array-data v3, :array_1

    .line 164
    .local v3, "privison_state":[I
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->needDeactiveCdmaPhone()Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object v4, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    if-eqz v4, :cond_e

    .line 165
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    if-nez v4, :cond_0

    .line 166
    const-string v1, "UiccCardProvisioner is null"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->loge(Ljava/lang/String;)V

    .line 167
    return-void

    .line 169
    :cond_0
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 170
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    invoke-virtual {v6, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v6

    aput v6, v3, v5

    .line 171
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentUiccCardProvisioningStatus: slot: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v3, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getUserPreferredPhoneActive(I)I

    move-result v6

    aput v6, v2, v5

    .line 173
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getUserPreferredPhoneActive: slot: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", active: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v2, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 169
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 182
    :cond_1
    new-array v6, v1, [I

    fill-array-data v6, :array_2

    .line 183
    .local v6, "enable_slot":[I
    const/4 v7, 0x0

    .line 184
    .local v7, "showDiag":Z
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->isCdmaSimCard(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 186
    aget v9, v3, v8

    if-ne v9, v8, :cond_2

    .line 187
    const-string v9, "need deactivateUiccCard slot2"

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 188
    aput v4, v6, v8

    .line 189
    const/4 v7, 0x1

    goto/16 :goto_3

    .line 190
    :cond_2
    sget-object v4, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mLastPrivisonState:[I

    aget v4, v4, v8

    if-eqz v4, :cond_a

    aget v4, v3, v8

    if-nez v4, :cond_a

    .line 192
    const-string v4, "still deactivateUiccCard slot2, show once dialog"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 193
    const/4 v7, 0x1

    goto/16 :goto_3

    .line 196
    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_a

    .line 197
    aget v9, v3, v5

    if-nez v9, :cond_4

    aget v9, v2, v5

    if-ne v9, v8, :cond_4

    .line 198
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "need activate slot"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 199
    aput v8, v6, v5

    goto/16 :goto_2

    .line 200
    :cond_4
    aget v9, v3, v5

    if-ne v9, v8, :cond_5

    aget v9, v2, v5

    if-nez v9, :cond_5

    .line 201
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "need deactivate slot"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 202
    aput v4, v6, v5

    goto/16 :goto_2

    .line 203
    :cond_5
    aget v9, v3, v5

    aget v10, v2, v5

    const/4 v11, -0x3

    const/4 v12, -0x2

    if-ne v9, v10, :cond_8

    .line 204
    aget v9, v3, v5

    if-ne v9, v8, :cond_6

    .line 205
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "still activate slot"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 206
    const/4 v9, -0x1

    aput v9, v6, v5

    goto :goto_2

    .line 207
    :cond_6
    aget v9, v3, v5

    if-nez v9, :cond_7

    .line 208
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "still deactivate slot"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 209
    aput v12, v6, v5

    goto :goto_2

    .line 210
    :cond_7
    aget v9, v3, v5

    if-ne v9, v12, :cond_9

    .line 211
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "still card not present slot"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 212
    aput v11, v6, v5

    goto :goto_2

    .line 214
    :cond_8
    aget v9, v3, v5

    if-ne v9, v12, :cond_9

    .line 215
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "card not present slot"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 216
    aput v11, v6, v5

    .line 196
    :cond_9
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 221
    :cond_a
    :goto_3
    const/4 v4, 0x0

    .end local v5    # "i":I
    .local v4, "i":I
    :goto_4
    if-ge v4, v1, :cond_d

    .line 222
    aget v5, v6, v4

    if-ne v5, v8, :cond_b

    .line 223
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    invoke-virtual {v5, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->activateUiccCard(I)I

    move-result v0

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "activate slot "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    goto :goto_5

    .line 225
    :cond_b
    aget v5, v6, v4

    if-nez v5, :cond_c

    .line 226
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    invoke-virtual {v5, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->deactivateUiccCard(I)I

    move-result v0

    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deactivate slot "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    goto :goto_5

    .line 229
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "do nothing for slot "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 232
    :goto_5
    sget-object v5, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mLastPrivisonState:[I

    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mCardProvisioner:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    invoke-virtual {v9, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v9

    aput v9, v5, v4

    .line 221
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 236
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "show diag = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 237
    if-eqz v7, :cond_e

    .line 238
    const-string v5, "show diag "

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 239
    invoke-direct {p0, v8}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->removeDeactiveCdmaDiag(Z)V

    .line 240
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->showDeactiveCdmaDiag()V

    .line 241
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mHandler:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsHandler;

    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mHandler:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsHandler;

    invoke-virtual {v8, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v8, 0x3a98

    invoke-virtual {v5, v1, v8, v9}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 244
    .end local v4    # "i":I
    .end local v6    # "enable_slot":[I
    .end local v7    # "showDiag":Z
    :cond_e
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x4
        -0x4
    .end array-data
.end method

.method public static init(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 288
    const-class v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    monitor-enter v0

    .line 289
    :try_start_0
    sput-object p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    .line 290
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    if-nez v1, :cond_0

    .line 291
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-direct {v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;-><init>()V

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    goto :goto_0

    .line 293
    :cond_0
    const-string v1, "ExtTelephonyServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    monitor-exit v0

    return-object v1

    .line 296
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isCdmaSimCard(I)Z
    .locals 5
    .param p1, "slotId"    # I

    .line 393
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getUiccApplicationCount(I)I

    move-result v0

    .line 396
    .local v0, "appNums":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 397
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getUiccApplicationType(II)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .local v3, "appType":I
    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 396
    .end local v3    # "appType":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 399
    .restart local v3    # "appType":I
    :cond_1
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 402
    .end local v2    # "i":I
    .end local v3    # "appType":I
    :catch_0
    move-exception v2

    .line 403
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCdmaSimCard exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->loge(Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 404
    :cond_2
    nop

    .line 406
    :goto_2
    return v1
.end method

.method private isPrimaryCarrierMccMnc(Ljava/lang/String;)Z
    .locals 26
    .param p1, "mccMnc"    # Ljava/lang/String;

    move-object/from16 v0, p0

    .line 650
    move-object/from16 v1, p1

    const-string v2, "405840"

    const-string v3, "405854"

    const-string v4, "405855"

    const-string v5, "405856"

    const-string v6, "405857"

    const-string v7, "405858"

    const-string v8, "405859"

    const-string v9, "405860"

    const-string v10, "405861"

    const-string v11, "405862"

    const-string v12, "405863"

    const-string v13, "405864"

    const-string v14, "405865"

    const-string v15, "405866"

    const-string v16, "405867"

    const-string v17, "405868"

    const-string v18, "405869"

    const-string v19, "405870"

    const-string v20, "405871"

    const-string v21, "405872"

    const-string v22, "405873"

    const-string v23, "405874"

    const-string v24, "22201"

    const-string v25, "2221"

    filled-new-array/range {v2 .. v25}, [Ljava/lang/String;

    move-result-object v2

    .line 655
    .local v2, "mccMncList":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 656
    .local v6, "mccmnc":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 657
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found a matching combination  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 658
    const/4 v3, 0x1

    return v3

    .line 655
    .end local v6    # "mccmnc":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 661
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not found a matching combination  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 662
    return v4
.end method

.method private isValidActive(I)Z
    .locals 1
    .param p1, "active"    # I

    .line 365
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 366
    const-string v0, "invalid active"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->loge(Ljava/lang/String;)V

    .line 367
    const/4 v0, 0x0

    return v0

    .line 369
    :cond_0
    return v0
.end method

.method private isValidSlot(I)Z
    .locals 1
    .param p1, "slot"    # I

    .line 357
    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 358
    :cond_1
    :goto_0
    const-string v0, "invalid slot"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->loge(Ljava/lang/String;)V

    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 786
    const-string v0, "ExtTelephonyServiceImpl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 790
    const-string v0, "ExtTelephonyServiceImpl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    return-void
.end method

.method private needDeactiveCdmaPhone()Z
    .locals 2

    .line 347
    const-string v0, "persist.radio.flexmap_type"

    const-string v1, "nw_mode"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "flexmap":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "disabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    const-string v1, "needDeactiveCdmaPhone"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 350
    const/4 v1, 0x1

    return v1

    .line 352
    :cond_0
    const-string v1, "no needDeactiveCdmaPhone"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 353
    const/4 v1, 0x0

    return v1
.end method

.method private removeDeactiveCdmaDiag(Z)V
    .locals 2
    .param p1, "removeMessage"    # Z

    .line 247
    const-string v0, "remove"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 251
    :cond_0
    if-eqz p1, :cond_1

    .line 252
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mHandler:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsHandler;->removeMessages(I)V

    .line 254
    :cond_1
    return-void
.end method

.method private setUserPreferredPhoneActive(II)Z
    .locals 3
    .param p1, "slot"    # I
    .param p2, "active"    # I

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserPreferredPhoneActive: slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "active: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 374
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->isValidActive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user_preferred_phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 379
    const/4 v0, 0x1

    return v0

    .line 375
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private showDeactiveCdmaDiag()V
    .locals 8

    .line 257
    const-string v0, "show"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$1;-><init>(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)V

    move-object v0, v1

    .line 271
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 273
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x50e0093

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "title":Ljava/lang/String;
    const v3, 0x50e0091

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, "message":Ljava/lang/String;
    const v4, 0x50e0092

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 277
    .local v4, "buttonTxt":Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 278
    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 279
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 280
    invoke-virtual {v5, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 281
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mDialog:Landroid/app/AlertDialog;

    .line 282
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 283
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 284
    return-void
.end method


# virtual methods
.method public activateUiccCard(I)I
    .locals 3
    .param p1, "slotId"    # I

    .line 413
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->needDeactiveCdmaPhone()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 414
    if-ne v1, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->isCdmaSimCard(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    const/4 v0, -0x1

    return v0

    .line 418
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->activateUiccCard(I)I

    move-result v0

    .line 419
    .local v0, "result":I
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->needDeactiveCdmaPhone()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 420
    invoke-direct {p0, p1, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->setUserPreferredPhoneActive(II)Z

    .line 423
    :cond_1
    return v0
.end method

.method public deactivateUiccCard(I)I
    .locals 2
    .param p1, "slotId"    # I

    .line 430
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->needDeactiveCdmaPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->isCdmaSimCard(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const/4 v0, -0x1

    return v0

    .line 435
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->deactivateUiccCard(I)I

    move-result v0

    .line 436
    .local v0, "result":I
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->needDeactiveCdmaPhone()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 437
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->setUserPreferredPhoneActive(II)Z

    .line 439
    :cond_1
    return v0
.end method

.method public disable5g(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 721
    invoke-static {}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->disable5g(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v0

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 795
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump ExtPhone from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 797
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 803
    return-void

    .line 805
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 807
    return-void
.end method

.method public enable5g(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 716
    invoke-static {}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->enable5g(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v0

    return-object v0
.end method

.method public enable5gOnly(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 726
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enableEndc(IZLorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "enabled"    # Z
    .param p3, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 766
    invoke-static {}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->enableEndc(IZLorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v0

    return-object v0
.end method

.method public getActiveSubscription()I
    .locals 3

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getActiveSubscription mDsda:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mDsda:Lorg/codeaurora/internal/IDsda;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mDsda:Lorg/codeaurora/internal/IDsda;

    invoke-interface {v0}, Lorg/codeaurora/internal/IDsda;->getActiveSubscription()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveSubscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 491
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentPrimaryCardSlotId()I
    .locals 1

    .line 564
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getCurrentPrimarySlotFromDB(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getCurrentUiccCardProvisioningStatus(I)I
    .locals 1
    .param p1, "slotId"    # I

    .line 330
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->needDeactiveCdmaPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->isCdmaSimCard(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    const/4 v0, -0x3

    return v0

    .line 335
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v0

    .line 336
    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v0

    .line 335
    return v0
.end method

.method public getPhoneIdForECall()I
    .locals 1

    .line 461
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->getPhoneIdForECall()I

    move-result v0

    return v0
.end method

.method public getPrimaryCarrierSlotId()I
    .locals 10

    .line 613
    const/4 v0, -0x1

    .line 614
    .local v0, "slotId":I
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    .line 615
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .line 616
    .local v1, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v2, 0x0

    .line 618
    .local v2, "matchingCount":I
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    goto/16 :goto_1

    .line 623
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 624
    .local v5, "subInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 625
    .local v6, "mccMnc":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v7

    .line 626
    .local v7, "provisionStatus":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "provisionStatus : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " slotId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 628
    if-ne v7, v4, :cond_1

    .line 629
    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->isPrimaryCarrierMccMnc(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 630
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found a matching combination, slotId  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    .line 632
    add-int/lit8 v2, v2, 0x1

    .line 634
    .end local v5    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v6    # "mccMnc":Ljava/lang/String;
    .end local v7    # "provisionStatus":I
    :cond_1
    goto :goto_0

    .line 637
    :cond_2
    if-le v2, v4, :cond_3

    .line 638
    const-string v3, "Found multiple matches, returning primary slotid"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 639
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "config_current_primary_sub"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 643
    :cond_3
    return v0

    .line 619
    :cond_4
    :goto_1
    const-string v3, "No active subscriptions found!!"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->loge(Ljava/lang/String;)V

    .line 620
    return v0
.end method

.method public getPrimaryStackPhoneId()I
    .locals 1

    .line 466
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->getPrimaryStackPhoneId()I

    move-result v0

    return v0
.end method

.method public getSmscAddress(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 696
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mQtiSmscHelper:Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->getSmscAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUiccApplicationCount(I)I
    .locals 2
    .param p1, "slotId"    # I

    .line 503
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 504
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    const/4 v1, 0x0

    .line 505
    .local v1, "count":I
    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v1

    .line 508
    :cond_0
    return v1
.end method

.method public getUiccApplicationState(II)I
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "appIndex"    # I

    .line 549
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 550
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    const/4 v1, 0x0

    .line 551
    .local v1, "appState":I
    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v1

    .line 554
    :cond_0
    return v1
.end method

.method public getUiccApplicationType(II)I
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "appIndex"    # I

    .line 530
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 531
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    const/4 v1, 0x0

    .line 532
    .local v1, "appType":I
    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v1

    .line 535
    :cond_0
    return v1
.end method

.method public getUiccCardProvisioningUserPreference(I)I
    .locals 1
    .param p1, "slotId"    # I

    .line 341
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v0

    .line 342
    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getUiccCardProvisioningUserPreference(I)I

    move-result v0

    .line 341
    return v0
.end method

.method public isDeviceInSingleStandby()Z
    .locals 1

    .line 588
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInSingleStandby()Z

    move-result v0

    return v0
.end method

.method public isDsdaEnabled()Z
    .locals 2

    .line 599
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .line 568
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFdnEnabled()Z
    .locals 2

    .line 495
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 496
    .local v0, "card":Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v1

    return v1

    .line 499
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isLocalEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .line 573
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPotentialEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .line 578
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isPotentialEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPotentialLocalEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .line 583
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPrimaryCarrierSlotId(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .line 672
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    .line 673
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 675
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No active subscription found on slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->loge(Ljava/lang/String;)V

    .line 677
    return v1

    .line 680
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 682
    .local v2, "mccMnc":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->isPrimaryCarrierMccMnc(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found a matching combination, slotId  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 684
    const/4 v1, 0x1

    return v1

    .line 686
    :cond_1
    return v1
.end method

.method public isSMSPromptEnabled()Z
    .locals 2

    .line 445
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 446
    const-string v0, "ExtTelephonyServiceImpl"

    const-string v1, "QtiSubscriptionController getInstance is null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isSMSPromptEnabled()Z

    move-result v0

    return v0
.end method

.method public isVendorApkAvailable(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 702
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 703
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    move v2, v1

    .line 705
    .local v2, "isApkAvailable":Z
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    const/4 v2, 0x1

    .line 709
    goto :goto_0

    .line 707
    :catch_0
    move-exception v1

    .line 708
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vendor apk not available for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 710
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return v2
.end method

.method public query5gConfigInfo(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 756
    invoke-static {}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->query5gConfigInfo(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v0

    return-object v0
.end method

.method public query5gStatus(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 731
    invoke-static {}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->query5gStatus(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v0

    return-object v0
.end method

.method public queryEndcStatus(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 771
    invoke-static {}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->queryEndcStatus(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v0

    return-object v0
.end method

.method public queryNrBearerAllocation(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 741
    invoke-static {}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->queryNrBearerAllocation(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v0

    return-object v0
.end method

.method public queryNrDcParam(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 736
    invoke-static {}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->queryNrDcParam(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v0

    return-object v0
.end method

.method public queryNrIconType(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 761
    invoke-static {}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->queryNrIconType(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v0

    return-object v0
.end method

.method public queryNrSignalStrength(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 751
    invoke-static {}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->queryNrSignalStrength(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v0

    return-object v0
.end method

.method public queryUpperLayerIndInfo(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "client"    # Lorg/codeaurora/internal/Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 746
    invoke-static {}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->queryUpperLayerIndInfo(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v0

    return-object v0
.end method

.method public registerCallback(Ljava/lang/String;Lorg/codeaurora/internal/INetworkCallback;)Lorg/codeaurora/internal/Client;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lorg/codeaurora/internal/INetworkCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 777
    invoke-static {}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->registerCallback(Ljava/lang/String;Lorg/codeaurora/internal/INetworkCallback;)Lorg/codeaurora/internal/Client;

    move-result-object v0

    return-object v0
.end method

.method public setDsdaAdapter(Lorg/codeaurora/internal/IDsda;)V
    .locals 2
    .param p1, "a"    # Lorg/codeaurora/internal/IDsda;

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDsdaAdapter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 472
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mDsda:Lorg/codeaurora/internal/IDsda;

    .line 473
    return-void
.end method

.method public setLocalCallHold(IZ)Z
    .locals 4
    .param p1, "subscriptionId"    # I
    .param p2, "enable"    # Z

    .line 592
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 593
    .local v0, "phoneId":I
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 594
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLocalCallHold:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 595
    move-object v2, v1

    check-cast v2, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-virtual {v2, p2}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->setLocalCallHold(Z)Z

    move-result v2

    return v2
.end method

.method public setPrimaryCardOnSlot(I)V
    .locals 1
    .param p1, "slotId"    # I

    .line 559
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardOnSlot(I)V

    .line 560
    return-void
.end method

.method public setSMSPromptEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 453
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 454
    const-string v0, "ExtTelephonyServiceImpl"

    const-string v1, "QtiSubscriptionController getInstance is null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setSMSPromptEnabled(Z)V

    .line 457
    return-void
.end method

.method public setSmscAddress(ILjava/lang/String;)Z
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "smsc"    # Ljava/lang/String;

    .line 691
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mQtiSmscHelper:Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->setSmscAddress(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public supplyIccDepersonalization(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/internal/IDepersoResCallback;I)V
    .locals 1
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "callback"    # Lorg/codeaurora/internal/IDepersoResCallback;
    .param p4, "phoneId"    # I

    .line 514
    const-string v0, "supplyIccDepersonalization"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 515
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;

    move-result-object v0

    .line 516
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;->supplyIccDepersonalization(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/internal/IDepersoResCallback;I)V

    .line 517
    return-void
.end method

.method public switchToActiveSub(I)V
    .locals 3
    .param p1, "sub"    # I

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchToActiveSub:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mDsda:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mDsda:Lorg/codeaurora/internal/IDsda;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mDsda:Lorg/codeaurora/internal/IDsda;

    invoke-interface {v0, p1}, Lorg/codeaurora/internal/IDsda;->switchToActiveSub(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    goto :goto_0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchToActiveSub:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 482
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public unRegisterCallback(Lorg/codeaurora/internal/INetworkCallback;)V
    .locals 1
    .param p1, "callback"    # Lorg/codeaurora/internal/INetworkCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 782
    invoke-static {}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/nrNetworkService/MainServiceImpl;->unRegisterCallback(Lorg/codeaurora/internal/INetworkCallback;)V

    .line 783
    return-void
.end method
