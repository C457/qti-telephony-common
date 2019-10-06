.class public Lorg/codeaurora/ims/ImsService;
.super Landroid/telephony/ims/ImsService;
.source "ImsService.java"


# static fields
.field private static final INVALID_SLOT_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ImsService"

.field private static final UNINITIALIZED_VALUE:I = -0x1


# instance fields
.field private mNumPhonesCache:I

.field private mQtiImsExt:Lorg/codeaurora/ims/QtiImsExt;

.field private mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

.field private mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

.field private mSubController:Lorg/codeaurora/ims/ImsSubController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/telephony/ims/ImsService;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsService;->mNumPhonesCache:I

    return-void
.end method

.method private getNumSlots()I
    .locals 2

    .line 49
    iget v0, p0, Lorg/codeaurora/ims/ImsService;->mNumPhonesCache:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 50
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/ims/ImsService;->mNumPhonesCache:I

    .line 52
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsService;->mNumPhonesCache:I

    return v0
.end method

.method private migrateDb()V
    .locals 6

    .line 79
    const-string v0, "rtt_mode"

    .line 80
    .local v0, "QTI_IMS_RTT_MODE":Ljava/lang/String;
    const/4 v1, -0x1

    .line 83
    .local v1, "RTT_MODE_INVALID":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "rtt_mode"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 85
    .local v2, "rttMode":I
    if-eq v2, v4, :cond_0

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upgradeDb: migrate to new db key for rtt. mode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "rtt_calling_mode"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "rtt_mode"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    :cond_0
    return-void
.end method

.method private setup()V
    .locals 12

    .line 56
    invoke-static {}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->getInstance()Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->setup(Landroid/content/Context;)V

    .line 57
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->migrateDb()V

    .line 58
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v0

    .line 59
    .local v0, "numSlots":I
    new-array v1, v0, [Lorg/codeaurora/ims/ImsServiceSub;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    .line 60
    new-array v1, v0, [Lorg/codeaurora/ims/ImsSenderRxr;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsService;->mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

    .line 61
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 62
    iget-object v3, p0, Lorg/codeaurora/ims/ImsService;->mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

    new-instance v4, Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v4, p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;-><init>(Landroid/content/Context;I)V

    aput-object v4, v3, v2

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lorg/codeaurora/ims/ImsSubController;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsService;->mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v2, p0, v3}, Lorg/codeaurora/ims/ImsSubController;-><init>(Landroid/content/Context;[Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsService;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    .line 65
    move v2, v1

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 66
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    .line 67
    .local v9, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v10, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v11, Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsService;->mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

    aget-object v6, v3, v2

    iget-object v7, p0, Lorg/codeaurora/ims/ImsService;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    iget-object v8, v9, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v3, v11

    move-object v4, p0

    move v5, v2

    invoke-direct/range {v3 .. v8}, Lorg/codeaurora/ims/ImsServiceSub;-><init>(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/ImsSubController;Lcom/android/internal/telephony/CommandsInterface;)V

    aput-object v11, v10, v2

    .line 65
    .end local v9    # "phone":Lcom/android/internal/telephony/Phone;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 70
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .line 71
    .local v2, "defaultSub":I
    iget-object v3, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v1, v3, v1

    invoke-static {v1, p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->init(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V

    .line 74
    new-instance v1, Lorg/codeaurora/ims/QtiImsExt;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    invoke-direct {v1, p0, v3}, Lorg/codeaurora/ims/QtiImsExt;-><init>(Landroid/content/Context;[Lorg/codeaurora/ims/ImsServiceSub;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsService;->mQtiImsExt:Lorg/codeaurora/ims/QtiImsExt;

    .line 75
    return-void
.end method


# virtual methods
.method public createMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;
    .locals 2
    .param p1, "slotId"    # I

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createMmTelFeature :: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 201
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    return-object v0

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createMmTelFeature :: Invalid slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x0

    return-object v0
.end method

.method public disableIms(I)V
    .locals 2
    .param p1, "slotId"    # I

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableIms :: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 180
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->turnOffIms()V

    goto :goto_0

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableIms :: Invalid slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void
.end method

.method public enableIms(I)V
    .locals 2
    .param p1, "slotId"    # I

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableIms :: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->turnOnIms()V

    goto :goto_0

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableIms :: Invalid slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    :goto_0
    return-void
.end method

.method public getConfig(I)Landroid/telephony/ims/stub/ImsConfigImplBase;
    .locals 2
    .param p1, "slotId"    # I

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfig :: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 218
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object v0

    return-object v0

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfig :: invalid slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRegistration(I)Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    .locals 2
    .param p1, "slotId"    # I

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRegistration :: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 234
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getImsRegistrationInterface()Lorg/codeaurora/ims/ImsRegistrationImpl;

    move-result-object v0

    return-object v0

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRegistration :: invalid slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 110
    const-string v0, "android.telephony.ims.ImsService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "Returning mImsServiceController for ImsService binding"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mImsServiceController:Landroid/os/IBinder;

    return-object v0

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Intent action in onBind: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 96
    invoke-super {p0}, Landroid/telephony/ims/ImsService;->onCreate()V

    .line 97
    const-string v0, "ImsService created!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->setup()V

    .line 101
    const-string v0, "qti.ims.ext"

    iget-object v1, p0, Lorg/codeaurora/ims/ImsService;->mQtiImsExt:Lorg/codeaurora/ims/QtiImsExt;

    invoke-virtual {v1}, Lorg/codeaurora/ims/QtiImsExt;->getBinder()Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 106
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 242
    const-string v0, "Ims Service Destroyed Successfully..."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 244
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->dispose()V

    .line 245
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    aput-object v2, v1, v0

    .line 246
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService;->mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

    aput-object v2, v1, v0

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    .end local v0    # "i":I
    :cond_0
    iput-object v2, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    .line 249
    iput-object v2, p0, Lorg/codeaurora/ims/ImsService;->mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

    .line 250
    iput-object v2, p0, Lorg/codeaurora/ims/ImsService;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    .line 251
    invoke-static {}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->getInstance()Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->teardown()V

    .line 252
    invoke-super {p0}, Landroid/telephony/ims/ImsService;->onDestroy()V

    .line 253
    return-void
.end method

.method public querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    .locals 4

    .line 132
    new-instance v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;-><init>()V

    .line 133
    .local v0, "features":Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 134
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->addFeature(II)Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    move-result-object v3

    .line 135
    invoke-virtual {v3, v2, v1}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->addFeature(II)Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->build()Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    move-result-object v1

    return-object v1
.end method

.method public readyForFeatureCreation()V
    .locals 1

    .line 153
    const-string v0, "readyForFeatureCreation :: No-op"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    return-void
.end method
