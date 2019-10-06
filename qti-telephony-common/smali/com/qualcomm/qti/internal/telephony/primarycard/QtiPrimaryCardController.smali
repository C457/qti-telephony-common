.class public Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;
.super Landroid/os/Handler;
.source "QtiPrimaryCardController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;
    }
.end annotation


# static fields
.field private static final ACTION_PRIMARY_CARD_CHANGED_IN_SERVICE:Ljava/lang/String; = "org.codeaurora.intent.action.PRIMARY_CARD_CHANGED_IN_SERVICE"

.field private static final ACTION_RADIO_CAPABILITY_UPDATED:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_RADIO_CAPABILITY_UPDATED"

.field private static final ACTION_SET_PRIMARY_CARD_DONE:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_SET_PRIMARY_CARD_DONE"

.field private static final DBG:Z = true

.field private static final EVENT_ALL_CARDS_INFO_AVAILABLE:I = 0x1

.field private static final EVENT_GET_NWMODE_DONE:I = 0x4

.field private static final EVENT_PRIMARY_CARD_SET_DONE:I = 0x5

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x7

.field private static final EVENT_SET_NWMODE_DONE:I = 0x3

.field private static final EVENT_SET_PRIMARY_SUB:I = 0x6

.field private static final EVENT_SET_RADIO_CAPABILITY_DONE:I = 0x2

.field private static final FWK_PRIMARY_CARD_REQUEST:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "QtiPcController"

.field private static final PRIMARYCARD_SUBSCRIPTION_KEY:Ljava/lang/String; = "primarycard_sub"

.field private static final PRIMARY_CARD_RESULT:Ljava/lang/String; = "result"

.field private static final SETTING_USER_PREF_DATA_SUB:Ljava/lang/String; = "user_preferred_data_sub"

.field private static final USER_PRIMARY_CARD_REQUEST:I = 0x3e9

.field private static final VDBG:Z = false

.field private static final ZTE_FEATURE_PRIMARYCRAD_DISABLE_LTECONFIG_PROMPT:Z

.field private static final ZTE_FEATURE_PRIMARYCRAD_IGNORE_DISABLEDDS:Z

.field private static final sCmccIins:[I

.field private static final sCtIins:[I

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;


# instance fields
.field private mCardChanged:Z

.field mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mCmdMessage:Landroid/os/Message;

.field private final mContext:Landroid/content/Context;

.field private mCurrentIccIds:[Ljava/lang/String;

.field private mIsLpluslSupport:Z

.field private mPcTriggeredFlexMapDone:Z

.field mPcUtils:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

.field private mPhone:[Lcom/android/internal/telephony/Phone;

.field private mPrefNwModes:[I

.field private mPrefPrimarySlot:I

.field private mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

.field mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

.field private mPriorityMatch:Z

.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryArray:[I

.field private mRetryCount:I

.field private mRetryPrimarySlot:I

.field mSubsidyLockSettingsObserver:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sCtIins:[I

    .line 90
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sCmccIins:[I

    .line 93
    const-string v0, "ZTE_FEATURE_PRIMARYCRAD_DISABLE_LTECONFIG_PROMPT"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zte/feature/Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->ZTE_FEATURE_PRIMARYCRAD_DISABLE_LTECONFIG_PROMPT:Z

    .line 94
    const-string v0, "ZTE_FEATURE_PRIMARYCRAD_IGNORE_DISABLEDDS"

    invoke-static {v0, v1}, Lcom/zte/feature/Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->ZTE_FEATURE_PRIMARYCRAD_IGNORE_DISABLEDDS:Z

    return-void

    :array_0
    .array-data 4
        0xdb62b
        0xdb633
    .end array-data

    :array_1
    .array-data 4
        0xdb628
        0xdb62a
        0xdb62f
        0xdb630
        0xdb5d9
        0xdb4a4
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phones"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 133
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardChanged:Z

    .line 72
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityMatch:Z

    .line 73
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPcTriggeredFlexMapDone:Z

    .line 77
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryArray:[I

    .line 80
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mIsLpluslSupport:Z

    .line 111
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->IDLE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    .line 157
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$1;-><init>(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    .line 135
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 136
    iput-object p3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 137
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->init(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPcUtils:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    .line 138
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    .line 139
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    .line 140
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->registerAllCardsInfoAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 141
    sget v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefNwModes:[I

    .line 142
    sget v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCurrentIccIds:[Ljava/lang/String;

    .line 144
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->resetPrimaryCardParams()V

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLockFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mSubsidyLockSettingsObserver:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    .line 150
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mSubsidyLockSettingsObserver:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->observe(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;)V

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 155
    return-void

    :array_0
    .array-data 4
        0x2
        0x5
        0xa
        0x14
        0x1e
    .end array-data
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    .line 44
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryPrimarySlot:I

    return v0
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    .line 44
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    return v0
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardIfRequired(ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    .line 44
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->resetSetNwModeFailureCount()V

    return-void
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;
    .locals 3

    .line 123
    const-class v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    monitor-enter v0

    .line 124
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    if-eqz v1, :cond_0

    .line 127
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    monitor-exit v0

    return-object v1

    .line 125
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "QtiPrimaryCardController was not initialized!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleGetNwModeDone(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 272
    const/4 v0, -0x1

    .line 273
    .local v0, "modemNwMode":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 274
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 275
    .local v2, "index":I
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 276
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    const/4 v4, 0x0

    aget v0, v3, v4

    .line 277
    invoke-direct {p0, v0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->saveNwModesToDB(II)V

    .line 279
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got nwMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " on slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", saved to DB, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method private handleOnSetPrimaryCardDone(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 369
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 370
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 371
    .local v1, "index":I
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_9

    .line 373
    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->savePrimarySlotToDB(I)V

    .line 374
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->broadcastPrimarySlotServiceChanged(I)V

    .line 376
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getUserSelectionMode()I

    move-result v2

    .line 377
    .local v2, "userSelectionMode":I
    const/4 v3, 0x0

    .line 379
    .local v3, "enableUserSelection":Z
    const/4 v4, 0x0

    .line 380
    .local v4, "numCmccCards":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    sget v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v5, v6, :cond_1

    .line 381
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-virtual {v6, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->getCardInfo(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sCmccIins:[I

    invoke-direct {p0, v6, v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->isCardMatchesIins(Ljava/lang/String;[I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 382
    add-int/lit8 v4, v4, 0x1

    .line 380
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 390
    .end local v5    # "i":I
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "userSelectionMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mPriorityMatch"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityMatch:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", numCmccCards = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 392
    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    iget-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityMatch:Z

    if-eqz v5, :cond_3

    .line 395
    :cond_2
    const/4 v3, 0x1

    .line 398
    :cond_3
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120093

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    .line 400
    if-nez v4, :cond_4

    const/4 v3, 0x1

    .line 401
    :cond_4
    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->saveEnableUserSelectioninDB(Z)V

    .line 402
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleOnSetPrimaryCardDone: enableUserSelection ="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mCardChanged:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardChanged:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", numCardsValid:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->numCardsValid()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 402
    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 405
    if-eqz v3, :cond_5

    iget-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardChanged:Z

    if-eqz v5, :cond_5

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->numCardsValid()I

    move-result v5

    if-le v5, v6, :cond_5

    iget-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityMatch:Z

    if-eqz v5, :cond_5

    .line 406
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->startLTEConifgActivity()V

    .line 409
    :cond_5
    return-void

    .line 412
    :cond_6
    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->saveEnableUserSelectioninDB(Z)V

    .line 414
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLockFeatureEnabled()Z

    move-result v5

    .line 415
    .local v5, "subsidyLockFeatureEnabled":Z
    const/4 v7, 0x1

    .line 416
    .local v7, "isPermanentlyUnlocked":Z
    if-eqz v5, :cond_7

    .line 417
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mSubsidyLockSettingsObserver:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    .line 418
    invoke-static {v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isPermanentlyUnlocked(Landroid/content/Context;)Z

    move-result v7

    .line 421
    :cond_7
    if-eqz v3, :cond_9

    iget-boolean v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardChanged:Z

    if-eqz v8, :cond_9

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->numCardsValid()I

    move-result v8

    if-le v8, v6, :cond_9

    if-eqz v7, :cond_9

    .line 424
    sget-boolean v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->ZTE_FEATURE_PRIMARYCRAD_DISABLE_LTECONFIG_PROMPT:Z

    if-eqz v6, :cond_8

    .line 425
    const-string v6, "disable LTE config prompt"

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 426
    return-void

    .line 429
    :cond_8
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->startLTEConifgActivity()V

    .line 432
    .end local v2    # "userSelectionMode":I
    .end local v3    # "enableUserSelection":Z
    .end local v4    # "numCmccCards":I
    .end local v5    # "subsidyLockFeatureEnabled":Z
    .end local v7    # "isPermanentlyUnlocked":Z
    :cond_9
    return-void
.end method

.method private handleServiceStateChanged(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 344
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 346
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_1

    .line 347
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    .line 348
    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getCurrentPrimarySlotFromDB(Landroid/content/Context;)I

    move-result v1

    .line 349
    .local v1, "currentPrimarySlot":I
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 351
    .local v2, "slotId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 352
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    goto :goto_0

    .line 354
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Error, Invalid slotId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 356
    :goto_0
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->broadcastPrimarySlotServiceChanged(I)V

    .line 358
    .end local v1    # "currentPrimarySlot":I
    .end local v2    # "slotId":I
    :cond_1
    return-void
.end method

.method private handleSetNwModeDone(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 217
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 218
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 219
    .local v1, "index":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 220
    .local v2, "requestType":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefNwModes:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " done, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 221
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 222
    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryCount:I

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryArray:[I

    array-length v5, v5

    if-gt v3, v5, :cond_0

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_0

    .line 224
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryArray:[I

    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryCount:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    mul-int/2addr v4, v3

    .line 225
    .local v4, "delay":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheduling retry for failed set primary card request: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ms"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 226
    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    iput v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryPrimarySlot:I

    .line 227
    new-instance v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$2;

    invoke-direct {v3, p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$2;-><init>(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;)V

    int-to-long v5, v4

    invoke-virtual {p0, v3, v5, v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    .end local v4    # "delay":I
    goto :goto_1

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->resetSetNwModeFailureCount()V

    .line 240
    nop

    .local v4, "i":I
    :goto_0
    move v3, v4

    .end local v4    # "i":I
    .local v3, "i":I
    sget v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v3, v4, :cond_1

    .line 241
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v3

    const/4 v5, 0x4

    .line 242
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 241
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 240
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 244
    .end local v4    # "i":I
    :cond_1
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sendSetPrimaryCardResult(I)V

    .line 246
    :goto_1
    return-void

    .line 248
    :cond_2
    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryCount:I

    if-lez v3, :cond_3

    .line 249
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->resetSetNwModeFailureCount()V

    .line 253
    :cond_3
    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPcTriggeredFlexMapDone:Z

    if-nez v3, :cond_5

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    if-ne v1, v3, :cond_4

    goto :goto_2

    .line 260
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set NwMode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefNwModes:[I

    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] on Primarycard:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 262
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPhone:[Lcom/android/internal/telephony/Phone;

    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefNwModes:[I

    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    aget v4, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    .line 263
    invoke-virtual {p0, v5, v6, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 262
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_3

    .line 255
    :cond_5
    :goto_2
    const-string v3, "add the set primaryslot first"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 256
    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->savePrimarySlotToDB(I)V

    .line 257
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setDdsOnPrimaryCardIfRequired()V

    .line 258
    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sendSetPrimaryCardResult(I)V

    .line 265
    :goto_3
    return-void
.end method

.method private handleSetRadioCapsDone()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->PENDING_DUE_TO_FLEXMAP_IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    if-ne v0, v1, :cond_0

    .line 205
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->IDLE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    .line 206
    const-string v0, "Flex mapping completed, try setting primary card now"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardIfRequired(Z)V

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->PENDING_DUE_TO_PC_IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    if-ne v0, v1, :cond_2

    .line 211
    :cond_1
    const-string v0, "Primary card trigerred Flex Mapping completed."

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPcTriggeredFlexMapDone:Z

    .line 214
    :cond_2
    :goto_0
    return-void
.end method

.method public static init(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phones"    # [Lcom/android/internal/telephony/Phone;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 115
    const-class v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    monitor-enter v0

    .line 116
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isPrimaryCardFeatureEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    invoke-direct {v1, p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    .line 119
    :cond_0
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isCardMatchesIins(Ljava/lang/String;[I)Z
    .locals 5
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "iins"    # [I

    .line 499
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 502
    :cond_0
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 503
    .local v1, "cardIin":I
    array-length v2, p2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, p2, v3

    .line 504
    .local v4, "iin":I
    if-ne v4, v1, :cond_1

    const/4 v0, 0x1

    return v0

    .line 503
    .end local v4    # "iin":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 506
    :cond_2
    return v0

    .line 500
    .end local v1    # "cardIin":I
    :cond_3
    :goto_1
    return v0
.end method

.method private isCardsInfoChanged()Z
    .locals 3

    .line 695
    const/4 v0, 0x0

    .line 696
    .local v0, "cardChanged":Z
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v1, v2, :cond_1

    .line 697
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->isCardsInfoChanged(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 698
    const/4 v0, 0x1

    .line 696
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 701
    .end local v1    # "index":I
    :cond_1
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 723
    const-string v0, "QtiPcController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 731
    const-string v0, "QtiPcController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 727
    const-string v0, "QtiPcController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    return-void
.end method

.method private notifySetPrimaryCardDone(Z)V
    .locals 3
    .param p1, "isPass"    # Z

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySetPrimaryCardDone: Set Primary Card SUCCESS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 362
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.intent.action.ACTION_SET_PRIMARY_CARD_DONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 364
    const-string v1, "phone"

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 366
    return-void
.end method

.method private numCardsValid()I
    .locals 3

    .line 461
    const/4 v0, 0x0

    .line 462
    .local v0, "numCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v1, v2, :cond_1

    .line 463
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-virtual {v2, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->getCardInfo(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 462
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 465
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private resetPrimaryCardParams()V
    .locals 3

    .line 510
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityMatch:Z

    .line 511
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCmdMessage:Landroid/os/Message;

    .line 512
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPcTriggeredFlexMapDone:Z

    .line 513
    nop

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v0, v1, :cond_0

    .line 514
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefNwModes:[I

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getDefaultNwMode()I

    move-result v2

    aput v2, v1, v0

    .line 513
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 516
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private resetSetNwModeFailureCount()V
    .locals 1

    .line 268
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryCount:I

    .line 269
    return-void
.end method

.method private saveCardIccIdInfoInSp()V
    .locals 5

    .line 713
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v0, v1, :cond_0

    .line 714
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCurrentIccIds:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 716
    .local v1, "iccId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save IccId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", on slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", in SP."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 717
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "primarycard_sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 718
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 713
    .end local v1    # "iccId":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 720
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private saveNwModesToDB(II)V
    .locals 5
    .param p1, "nwMode"    # I
    .param p2, "slotId"    # I

    .line 677
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v0

    .line 678
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveNwModesToDB: subId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", new Nw mode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logi(Ljava/lang/String;)V

    .line 681
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v1

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 682
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preferred_network_mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 687
    :cond_0
    const-string v1, "saveNwModesToDB: subId is null, do not save nwMode in subId based DB"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->loge(Ljava/lang/String;)V

    .line 689
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, p2, p1}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 692
    return-void
.end method

.method private sendSetPrimaryCardResult(I)V
    .locals 3
    .param p1, "responseCode"    # I

    .line 294
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCmdMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 295
    invoke-static {p1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCmdMessage:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 297
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCmdMessage:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 298
    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCmdMessage:Landroid/os/Message;

    .line 301
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 302
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->saveCardIccIdInfoInSp()V

    .line 303
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->notifySetPrimaryCardDone(Z)V

    .line 304
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->savePrimarySlotToDB(I)V

    .line 305
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->broadcastPrimarySlotServiceChanged(I)V

    goto :goto_0

    .line 307
    :cond_1
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->notifySetPrimaryCardDone(Z)V

    .line 310
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->PENDING_DUE_TO_PC_IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    if-ne v1, v2, :cond_2

    .line 311
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->IDLE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    .line 312
    const-string v1, "Primary Card request completed, check for pending reqeusts"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logi(Ljava/lang/String;)V

    .line 313
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardIfRequired(Z)V

    goto :goto_1

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    if-ne v0, v1, :cond_3

    .line 315
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->IDLE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    .line 317
    :cond_3
    :goto_1
    return-void
.end method

.method private setDdsOnPrimaryCardIfRequired()V
    .locals 4

    .line 283
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 285
    .local v0, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 287
    .local v1, "subId":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 288
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_preferred_data_sub"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cofigure DDS on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method private setPrimaryCardIfRequired(Z)V
    .locals 1
    .param p1, "force"    # Z

    .line 523
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardIfRequired(ZZ)V

    .line 524
    return-void
.end method

.method private setPrimaryCardIfRequired(ZZ)V
    .locals 7
    .param p1, "force"    # Z
    .param p2, "isRetryRequest"    # Z

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPrimaryCardIfRequired: force: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 531
    const/4 v0, -0x1

    .line 533
    .local v0, "slotId":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->PENDING_DUE_TO_PC_IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    if-ne v1, v2, :cond_1

    :cond_0
    if-nez p2, :cond_1

    .line 540
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->PENDING_DUE_TO_PC_IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    .line 541
    const-string v1, "Primary Card setting in progress. WAIT!"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logi(Ljava/lang/String;)V

    .line 542
    return-void

    .line 543
    :cond_1
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isFlexMapInProgress()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->PENDING_DUE_TO_FLEXMAP_IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    if-ne v1, v2, :cond_2

    goto/16 :goto_6

    .line 550
    :cond_2
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAnyProvisionRequestInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 553
    const-string v1, "Manual provisioning in progress. EXIT!"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logi(Ljava/lang/String;)V

    .line 554
    return-void

    .line 557
    :cond_3
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->isCardsInfoChanged()Z

    move-result v1

    .line 559
    .local v1, "isCardChanged":Z
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLockFeatureEnabled()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_5

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1

    :cond_5
    :goto_0
    move v2, v3

    .line 560
    .local v2, "override":Z
    :goto_1
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    if-nez v2, :cond_7

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move v6, v4

    goto :goto_3

    :cond_7
    :goto_2
    move v6, v3

    :goto_3
    invoke-virtual {v5, v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->loadCurrentPriorityConfigs(Z)V

    .line 563
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    invoke-virtual {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->getPrefPrimarySlot()I

    move-result v5

    iput v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    .line 564
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPrefPrimarySlot: setPrimaryCardIfRequired: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->loge(Ljava/lang/String;)V

    .line 567
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v5}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getLpluslSupportStatus()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_4

    .line 568
    :cond_8
    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_9

    move v4, v3

    nop

    .line 569
    .local v4, "isSetable":Z
    :cond_9
    :goto_4
    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->savePrimarySetable(Z)V

    .line 571
    if-nez v1, :cond_a

    if-nez p2, :cond_a

    if-nez p1, :cond_a

    .line 572
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "primary card "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getCurrentPrimarySlotFromDB(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ,Cards not changed, IGNORE!!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 574
    return-void

    .line 576
    :cond_a
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardChanged:Z

    .line 578
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->resetPrimaryCardParams()V

    .line 581
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->updateDdsPreferenceInDb()V

    .line 583
    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_b

    .line 584
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getDefaultPrimarySlot()I

    move-result v5

    iput v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    .line 585
    iput-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityMatch:Z

    goto :goto_5

    .line 586
    :cond_b
    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    if-gez v3, :cond_d

    .line 587
    const-string v3, "Both slots do not have cards with priority config defined. EXIT!"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logi(Ljava/lang/String;)V

    .line 590
    if-eqz p2, :cond_c

    .line 591
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sendSetPrimaryCardResult(I)V

    .line 592
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->resetSetNwModeFailureCount()V

    .line 594
    :cond_c
    return-void

    .line 597
    :cond_d
    :goto_5
    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    const/4 v5, 0x5

    iget v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    .line 598
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 597
    invoke-direct {p0, v3, v5, p2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardOnSlot(ILandroid/os/Message;Z)V

    .line 600
    return-void

    .line 547
    .end local v1    # "isCardChanged":Z
    .end local v2    # "override":Z
    .end local v4    # "isSetable":Z
    :cond_e
    :goto_6
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->PENDING_DUE_TO_FLEXMAP_IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    .line 548
    const-string v1, "Flex Map in progress. WAIT!"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logi(Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method private declared-synchronized setPrimaryCardOnSlot(ILandroid/os/Message;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "msg"    # Landroid/os/Message;

    monitor-enter p0

    .line 614
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardOnSlot(ILandroid/os/Message;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    monitor-exit p0

    return-void

    .line 613
    .end local p1    # "slotId":I
    .end local p2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;
    throw p1
.end method

.method private declared-synchronized setPrimaryCardOnSlot(ILandroid/os/Message;Z)V
    .locals 7
    .param p1, "primarySlotId"    # I
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "isRetryRequest"    # Z

    monitor-enter p0

    .line 619
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 620
    .local v0, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 622
    .local v1, "subId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPrimaryCardOnSlot: for slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Start."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 624
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->IDLE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    if-eq v2, v3, :cond_0

    if-eqz p3, :cond_9

    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    .line 625
    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->isConfigLoadDone()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 626
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_5

    .line 635
    :cond_1
    const/4 v2, 0x0

    if-nez p2, :cond_4

    .line 636
    move v3, v2

    .local v3, "i":I
    :goto_0
    sget v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v3, v4, :cond_2

    .line 637
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCurrentIccIds:[Ljava/lang/String;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-virtual {v5, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->getCardInfo(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 636
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 641
    .end local v3    # "i":I
    :cond_2
    move v3, v2

    .restart local v3    # "i":I
    :goto_1
    sget v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v3, v4, :cond_4

    .line 642
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentIccIds["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCurrentIccIds:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 643
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCurrentIccIds:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-nez v4, :cond_3

    .line 644
    const-string v2, "the iccid is null, break the UI request primarycard process"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    monitor-exit p0

    return-void

    .line 641
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 651
    .end local v3    # "i":I
    :cond_4
    :try_start_1
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    .line 654
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->getNwModesFromConfig(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefNwModes:[I

    .line 655
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    .line 656
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCmdMessage:Landroid/os/Message;

    .line 657
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCmdMessage:Landroid/os/Message;

    if-eqz v3, :cond_5

    const/16 v3, 0x3e8

    goto :goto_2

    :cond_5
    const/16 v3, 0x3e9

    .line 658
    .local v3, "isFwkRequest":I
    :goto_2
    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPcTriggeredFlexMapDone:Z

    .line 661
    move v4, v2

    .local v4, "i":I
    :goto_3
    sget v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v4, v5, :cond_6

    .line 662
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefNwModes:[I

    aget v5, v5, v4

    invoke-direct {p0, v5, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->saveNwModesToDB(II)V

    .line 661
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 667
    .end local v4    # "i":I
    :cond_6
    nop

    .local v2, "index":I
    :goto_4
    sget v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v2, v4, :cond_8

    .line 668
    if-eq v2, p1, :cond_7

    .line 669
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set NwMode["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefNwModes:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]  on Secondary card:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 670
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefNwModes:[I

    aget v5, v5, v2

    const/4 v6, 0x3

    .line 671
    invoke-virtual {p0, v6, v2, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 670
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 667
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 674
    .end local v2    # "index":I
    :cond_8
    monitor-exit p0

    return-void

    .line 627
    .end local v3    # "isFwkRequest":I
    :cond_9
    :goto_5
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Primary Card State is not IDLE, mPrimaryCardState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", or configs not yet loaded EXIT!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->loge(Ljava/lang/String;)V

    .line 629
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sendSetPrimaryCardResult(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 630
    monitor-exit p0

    return-void

    .line 618
    .end local v0    # "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    .end local v1    # "subId":I
    .end local p1    # "primarySlotId":I
    .end local p2    # "msg":Landroid/os/Message;
    .end local p3    # "isRetryRequest":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;
    throw p1
.end method

.method private startLTEConifgActivity()V
    .locals 2

    .line 435
    new-instance v0, Landroid/content/Intent;

    const-string v1, "codeaurora.intent.action.ACTION_LTE_CONFIGURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 436
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x30800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 439
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 440
    return-void
.end method

.method private updateDdsPreferenceInDb()V
    .locals 5

    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "disableDds":Z
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isCmccPrimaryCardFeatureEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 471
    const/4 v1, 0x0

    .line 472
    .local v1, "numCmccCards":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v2, v3, :cond_1

    .line 473
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-virtual {v3, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->getCardInfo(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sCmccIins:[I

    invoke-direct {p0, v3, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->isCardMatchesIins(Ljava/lang/String;[I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 474
    add-int/lit8 v1, v1, 0x1

    .line 472
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 477
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numCmccCards: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logi(Ljava/lang/String;)V

    .line 479
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 480
    const-string v2, "updateDdsPreferenceInDb: Disable DDS in UI."

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logi(Ljava/lang/String;)V

    .line 481
    const/4 v0, 0x1

    .line 485
    :cond_2
    sget-boolean v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->ZTE_FEATURE_PRIMARYCRAD_IGNORE_DISABLEDDS:Z

    if-eqz v2, :cond_3

    .line 486
    const-string v2, "ignore disable dds"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 487
    const/4 v0, 0x0

    .line 491
    .end local v1    # "numCmccCards":I
    :cond_3
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->disableDds()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 492
    const/4 v0, 0x1

    .line 494
    :cond_4
    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->saveDisableDdsPreferenceInDB(Z)V

    .line 495
    return-void
.end method


# virtual methods
.method broadcastPrimarySlotServiceChanged(I)V
    .locals 4
    .param p1, "slotId"    # I

    .line 320
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Error!!! Invalid slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 322
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 327
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 328
    .local v0, "ss":Landroid/telephony/ServiceState;
    if-eqz v0, :cond_2

    .line 329
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-nez v1, :cond_2

    .line 331
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_2

    .line 332
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " broadcastPrimarySlotServiceChanged, slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 334
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.codeaurora.intent.action.PRIMARY_CARD_CHANGED_IN_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "phone"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 337
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 338
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p1

    const/4 v2, 0x7

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 341
    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 170
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 192
    :pswitch_0
    const-string v0, "on EVENT_SET_PRIMARY_SUB "

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardIfRequired(Z)V

    .line 195
    :pswitch_1
    const-string v0, "on EVENT_SERVICE_STATE_CHANGED "

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->handleServiceStateChanged(Landroid/os/Message;)V

    goto :goto_0

    .line 188
    :pswitch_2
    const-string v0, "on EVENT_PRIMARY_CARD_SET_DONE"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 189
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->handleOnSetPrimaryCardDone(Landroid/os/Message;)V

    .line 190
    goto :goto_0

    .line 184
    :pswitch_3
    const-string v0, "on EVENT_GET_NWMODE_DONE"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->handleGetNwModeDone(Landroid/os/Message;)V

    .line 186
    goto :goto_0

    .line 180
    :pswitch_4
    const-string v0, "on EVENT_SET_NWMODE_DONE"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 181
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->handleSetNwModeDone(Landroid/os/Message;)V

    .line 182
    goto :goto_0

    .line 176
    :pswitch_5
    const-string v0, "on EVENT_SET_RADIO_CAPABILITY_DONE"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 177
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->handleSetRadioCapsDone()V

    .line 178
    goto :goto_0

    .line 172
    :pswitch_6
    const-string v0, "on EVENT_ALL_CARDS_INFO_AVAILABLE"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardIfRequired(Z)V

    .line 174
    nop

    .line 199
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected isCardsInfoChanged(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 705
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCurrentIccIds:[Ljava/lang/String;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->getCardInfo(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    move-object v0, v1

    .line 706
    .local v0, "iccId":Ljava/lang/String;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "primarycard_sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 708
    .local v1, "iccIdInSP":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " icc id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", icc id in sp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 709
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public saveUserSelectionMode()V
    .locals 4

    .line 443
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getUserSelectionMode()I

    move-result v0

    .line 444
    .local v0, "userSelectionMode":I
    const/4 v1, 0x0

    .line 450
    .local v1, "enableUserSelection":Z
    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityMatch:Z

    if-eqz v2, :cond_1

    .line 453
    :cond_0
    const/4 v1, 0x1

    .line 455
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveUserSelectionMode: enableUserSelection ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 457
    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->saveEnableUserSelectioninDB(Z)V

    .line 458
    return-void
.end method

.method public setPrimaryCardOnSlot(I)V
    .locals 2
    .param p1, "slotId"    # I

    .line 604
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isRadioInValidState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPrimaryCardOnSlot["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: Radio is in Invalid State, EXIT!!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->loge(Ljava/lang/String;)V

    .line 606
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sendSetPrimaryCardResult(I)V

    .line 607
    return-void

    .line 610
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardOnSlot(ILandroid/os/Message;)V

    .line 611
    return-void
.end method

.method public trySetPrimarySub()V
    .locals 1

    .line 519
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sendMessage(Landroid/os/Message;)Z

    .line 520
    return-void
.end method
