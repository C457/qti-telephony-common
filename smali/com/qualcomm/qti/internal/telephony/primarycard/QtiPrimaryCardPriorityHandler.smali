.class public Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;
.super Ljava/lang/Object;
.source "QtiPrimaryCardPriorityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final INVALID_NETWORK:I = -0x1

.field private static final INVALID_PRIORITY:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "QtiPcPriorityHandler"

.field private static final VDBG:Z = false

.field private static final ZTE_FEATURE_TWO_CTSIM_PRIMARYCARD_SWITCH:Z

.field private static packageName:Ljava/lang/String;


# instance fields
.field private mAllPriorityConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

.field private mLoadingConfigCompleted:Z

.field private mLoadingCurrentConfigsDone:Z

.field private mPrefPrimarySlot:I

.field private mPriorityCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    const-string v0, "com.qualcomm.qti.simsettings"

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->packageName:Ljava/lang/String;

    .line 57
    const-string v0, "ZTE_FEATURE_TWO_CTSIM_PRIMARYCARD_SWITCH"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zte/feature/Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->ZTE_FEATURE_TWO_CTSIM_PRIMARYCARD_SWITCH:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    .line 50
    const/4 v1, -0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    .line 51
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingConfigCompleted:Z

    .line 52
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingCurrentConfigsDone:Z

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    .line 85
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mContext:Landroid/content/Context;

    .line 87
    sget v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    new-array v0, v0, [Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    .line 89
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->readPriorityConfigFromXml()V

    .line 90
    return-void
.end method

.method private areConfigPrioritiesEqual()Z
    .locals 4

    .line 192
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v1, v2, :cond_2

    .line 193
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->priority:I

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->priority:I

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 192
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_1
    :goto_1
    return v0

    .line 198
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private getMaxPrioritySlot()I
    .locals 4

    .line 176
    const/4 v0, -0x1

    .line 177
    .local v0, "slotId":I
    const/4 v1, -0x1

    .line 179
    .local v1, "tempMaxPriority":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v2, v3, :cond_1

    .line 180
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->priority:I

    if-ge v1, v3, :cond_0

    .line 182
    move v0, v2

    .line 183
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v3, v3, v2

    iget v1, v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->priority:I

    .line 179
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxPriority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", maxPrioritySlot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 188
    return v0
.end method

.method private getNumSlotsWithCdma([I)I
    .locals 3
    .param p1, "prefNwModes"    # [I

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "numSlotsWithCdma":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v1, v2, :cond_1

    .line 130
    aget v2, p1, v1

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->is3gpp2NwMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 129
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private getPattern(Landroid/content/res/XmlResourceParser;)Ljava/util/regex/Pattern;
    .locals 2
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 303
    const-string v0, "iin_pattern"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "regEx":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 305
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    return-object v1

    .line 307
    :cond_0
    return-object v1
.end method

.method private getPriorityConfig(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;
    .locals 7
    .param p1, "slotId"    # I

    .line 202
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getPriorityConfigComparator()I

    move-result v0

    .line 203
    .local v0, "priorityConfigComparator":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    move-result-object v1

    .line 204
    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->getCardInfo(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    move-result-object v1

    .line 206
    .local v1, "cardInfo":Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPriorityConfig: for slot:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": iccid is null, EXIT!!!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 209
    return-object v3

    .line 212
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPriorityConfig: for slot:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mcc-mnc "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getMccMnc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Start!!!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 216
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    if-ge v2, v4, :cond_2

    .line 217
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    .line 218
    .local v4, "pConfig":Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;
    packed-switch v0, :pswitch_data_0

    .end local v4    # "pConfig":Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;
    goto/16 :goto_1

    .line 235
    .restart local v4    # "pConfig":Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;
    :pswitch_0
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getMccMnc()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->pattern:Ljava/util/regex/Pattern;

    .line 236
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getMccMnc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->cardType:Ljava/lang/String;

    .line 237
    invoke-virtual {v1, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->isCardTypeSame(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPriorityConfig: Found for slot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->loge(Ljava/lang/String;)V

    .line 239
    return-object v4

    .line 228
    :pswitch_1
    iget-object v5, v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->cardType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->isCardTypeSame(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPriorityConfig: Found for slot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 230
    return-object v4

    .line 220
    :pswitch_2
    iget-object v5, v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->cardType:Ljava/lang/String;

    .line 221
    invoke-virtual {v1, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->isCardTypeSame(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPriorityConfig: Found for slot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    return-object v4

    .line 216
    .end local v4    # "pConfig":Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 248
    .end local v2    # "i":I
    :cond_2
    goto :goto_2

    .line 246
    :catch_0
    move-exception v2

    .line 247
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "QtiPcPriorityHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPriorityConfig:Exception:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 311
    const-string v0, "QtiPcPriorityHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 319
    const-string v0, "QtiPcPriorityHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 315
    const-string v0, "QtiPcPriorityHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void
.end method

.method private readPriorityConfigFromXml()V
    .locals 6

    .line 258
    const/4 v0, 0x0

    .line 260
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 261
    .local v2, "res":Landroid/content/res/Resources;
    if-nez v2, :cond_0

    const-string v3, "res is null"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->loge(Ljava/lang/String;)V

    .line 262
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getConfigXml()Ljava/lang/String;

    move-result-object v3

    const-string v4, "xml"

    sget-object v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 263
    .local v3, "resId":I
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    move-object v0, v4

    .line 265
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 266
    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    .line 268
    const-string v4, "priority_config"

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 270
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 271
    :goto_0
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 272
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->savePriorityConfig(Landroid/content/res/XmlResourceParser;)V

    .line 273
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 275
    :cond_1
    iput-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingConfigCompleted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "resId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAllPriorityConfigs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logi(Ljava/lang/String;)V

    .line 281
    if-eqz v0, :cond_2

    .line 282
    :goto_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    .line 280
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 276
    :catch_0
    move-exception v2

    .line 277
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "QtiPcPriorityHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while reading priority configs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingConfigCompleted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    .end local v2    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAllPriorityConfigs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logi(Ljava/lang/String;)V

    .line 281
    if-eqz v0, :cond_2

    goto :goto_1

    .line 285
    :cond_2
    :goto_2
    return-void

    .line 280
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAllPriorityConfigs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logi(Ljava/lang/String;)V

    .line 281
    if-eqz v0, :cond_3

    .line 282
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    throw v1
.end method

.method private savePriorityConfig(Landroid/content/res/XmlResourceParser;)V
    .locals 3
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 288
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    invoke-direct {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;-><init>()V

    .line 291
    .local v0, "pConfig":Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;
    const-string v1, "priority"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->priority:I

    .line 292
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->getPattern(Landroid/content/res/XmlResourceParser;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->pattern:Ljava/util/regex/Pattern;

    .line 293
    const-string v1, "card_type"

    invoke-interface {p1, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->cardType:Ljava/lang/String;

    .line 294
    const-string v1, "mccmnc"

    invoke-interface {p1, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->mccmnc:Ljava/lang/String;

    .line 295
    const-string v1, "network1"

    invoke-interface {p1, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->network1:I

    .line 296
    const-string v1, "network2"

    invoke-interface {p1, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->network2:I

    .line 297
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added to mAllPriorityConfigs["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 299
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    .line 300
    return-void
.end method


# virtual methods
.method public getNwModesFromConfig(I)[I
    .locals 5
    .param p1, "primarySlotId"    # I

    .line 93
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getDefaultNwMode()I

    move-result v0

    .line 94
    .local v0, "defaultNwMode":I
    sget v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    new-array v1, v1, [I

    .line 96
    .local v1, "prefNwModes":[I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    sget v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v3, v4, :cond_2

    .line 97
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v4, v4, v3

    if-eqz v4, :cond_1

    .line 98
    if-ne v3, p1, :cond_0

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->network1:I

    goto :goto_1

    .line 99
    :cond_0
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->network2:I

    :goto_1
    aput v4, v1, v3

    goto :goto_2

    .line 101
    :cond_1
    aput v0, v1, v3

    .line 96
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    .end local v3    # "i":I
    :cond_2
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->getNumSlotsWithCdma([I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    .line 107
    const-string v3, "getNwModesFromConfig: More than one slot has CDMA nwMode set non-primary card nwModes to default nwMode"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 109
    nop

    .local v2, "i":I
    :goto_3
    sget v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v2, v3, :cond_5

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNwModesFromConfig: nwMode from config on slot ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logi(Ljava/lang/String;)V

    .line 113
    if-eq v2, p1, :cond_4

    .line 114
    sget-boolean v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->ZTE_FEATURE_TWO_CTSIM_PRIMARYCARD_SWITCH:Z

    if-eqz v3, :cond_3

    .line 115
    const/16 v3, 0x14

    aput v3, v1, v2

    goto :goto_4

    .line 117
    :cond_3
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getDefaultNwMode()I

    move-result v3

    aput v3, v1, v2

    .line 109
    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 124
    .end local v2    # "i":I
    :cond_5
    return-object v1
.end method

.method public getPrefPrimarySlot()I
    .locals 2

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    .line 157
    const-string v0, "getPrefPrimarySlot:  Start!!!"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 159
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingCurrentConfigsDone:Z

    if-nez v0, :cond_0

    .line 160
    const-string v0, "getPrefPrimarySlot: Current Config Loading not done. EXIT!!!"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 161
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    return v0

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->areConfigPrioritiesEqual()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    const/4 v0, -0x2

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    goto :goto_0

    .line 167
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->getMaxPrioritySlot()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    .line 170
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPrefPrimarySlot: return mPrefPrimarySlot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 172
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    return v0
.end method

.method public isConfigLoadDone()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingCurrentConfigsDone:Z

    return v0
.end method

.method public loadCurrentPriorityConfigs(Z)V
    .locals 3
    .param p1, "override"    # Z

    .line 140
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingConfigCompleted:Z

    if-nez v0, :cond_0

    .line 141
    const-string v0, "getPrefPrimarySlot: All Config Loading not done. EXIT!!!"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    .line 142
    return-void

    .line 145
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingCurrentConfigsDone:Z

    if-nez v0, :cond_3

    .line 147
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v0, v1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->getPriorityConfig(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    move-result-object v2

    aput-object v2, v1, v0

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingCurrentConfigsDone:Z

    .line 152
    :cond_3
    return-void
.end method

.method public reloadPriorityConfig()V
    .locals 0

    .line 253
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->setConfigValue()V

    .line 254
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->readPriorityConfigFromXml()V

    .line 255
    return-void
.end method
