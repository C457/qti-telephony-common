.class public Lcom/qualcomm/location/GpsNetInitiatedHandler;
.super Ljava/lang/Object;
.source "GpsNetInitiatedHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/location/GpsNetInitiatedHandler$OutgoingCallReceiver;,
        Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiResponse;,
        Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;
    }
.end annotation


# static fields
.field public static final ACTION_NI_VERIFY:Ljava/lang/String; = "android.intent.action.NETWORK_INITIATED_VERIFY"

.field private static final CHANNEL_ID:Ljava/lang/String; = "LOC_SVC_NI"

.field private static final CHANNEL_NAME:Ljava/lang/String; = "LOC_SVC_NI"

.field private static final DEBUG:Z = true

.field public static final GPS_ENC_NONE:I = 0x0

.field public static final GPS_ENC_SUPL_GSM_DEFAULT:I = 0x1

.field public static final GPS_ENC_SUPL_UCS2:I = 0x3

.field public static final GPS_ENC_SUPL_UTF8:I = 0x2

.field public static final GPS_ENC_UNKNOWN:I = -0x1

.field public static final GPS_NI_NEED_NOTIFY:I = 0x1

.field public static final GPS_NI_NEED_VERIFY:I = 0x2

.field public static final GPS_NI_PRIVACY_OVERRIDE:I = 0x4

.field public static final GPS_NI_RESPONSE_ACCEPT:I = 0x1

.field public static final GPS_NI_RESPONSE_DENY:I = 0x2

.field public static final GPS_NI_RESPONSE_IGNORE:I = 0x4

.field public static final GPS_NI_RESPONSE_NORESP:I = 0x3

.field public static final GPS_NI_TYPE_EMERGENCY_SUPL:I = 0x4

.field public static final GPS_NI_TYPE_UMTS_CTRL_PLANE:I = 0x3

.field public static final GPS_NI_TYPE_UMTS_SUPL:I = 0x2

.field public static final GPS_NI_TYPE_VOICE:I = 0x1

.field public static final NI_EXTRA_CMD_NOTIF_ID:Ljava/lang/String; = "notif_id"

.field public static final NI_EXTRA_CMD_RESPONSE:Ljava/lang/String; = "response"

.field public static final NI_INTENT_KEY_DEFAULT_RESPONSE:Ljava/lang/String; = "default_resp"

.field public static final NI_INTENT_KEY_MESSAGE:Ljava/lang/String; = "message"

.field public static final NI_INTENT_KEY_NOTIF_ID:Ljava/lang/String; = "notif_id"

.field public static final NI_INTENT_KEY_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final NI_INTENT_KEY_TITLE:Ljava/lang/String; = "title"

.field public static final NI_RESPONSE_EXTRA_CMD:Ljava/lang/String; = "send_ni_response"

.field private static final TAG:Ljava/lang/String; = "LocSvc_NiH"

.field private static final VERBOSE:Z = false

.field private static mIsHexInput:Z

.field public static mIsInEmergency:Z

.field public static obj:Lcom/qualcomm/location/GpsNetInitiatedHandler;


# instance fields
.field private mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private final mContext:Landroid/content/Context;

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mPlaySounds:Z

.field private mPopupImmediately:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    .line 123
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mIsInEmergency:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netInitiatedListener"    # Landroid/location/INetInitiatedListener;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mPlaySounds:Z

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mPopupImmediately:Z

    .line 205
    iput-object p1, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    .line 206
    iput-object p2, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 207
    sput-object p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->obj:Lcom/qualcomm/location/GpsNetInitiatedHandler;

    .line 208
    return-void
.end method

.method static decodeGSMPackedString([B)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # [B

    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, "PADDING_CHAR":C
    array-length v1, p0

    .line 419
    .local v1, "lengthBytes":I
    mul-int/lit8 v2, v1, 0x8

    div-int/lit8 v2, v2, 0x7

    .line 426
    .local v2, "lengthSeptets":I
    rem-int/lit8 v3, v1, 0x7

    if-nez v3, :cond_0

    .line 427
    if-lez v1, :cond_0

    .line 428
    add-int/lit8 v3, v1, -0x1

    aget-byte v3, p0, v3

    shr-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 429
    add-int/lit8 v2, v2, -0x1

    .line 434
    :cond_0
    const/4 v3, 0x0

    invoke-static {p0, v3, v2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v3

    .line 437
    .local v3, "decoded":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 438
    const-string v4, "LocSvc_NiH"

    const-string v5, "Decoding of GSM packed string failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v3, ""

    .line 442
    :cond_1
    return-object v3
.end method

.method private static decodeString(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 5
    .param p0, "original"    # Ljava/lang/String;
    .param p1, "isHex"    # Z
    .param p2, "coding"    # I

    .line 485
    move-object v0, p0

    .line 486
    .local v0, "decoded":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->stringToByteArray(Ljava/lang/String;Z)[B

    move-result-object v1

    .line 488
    .local v1, "input":[B
    packed-switch p2, :pswitch_data_0

    .line 510
    const-string v2, "LocSvc_NiH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown encoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for NI text "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 502
    :pswitch_0
    invoke-static {v1}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->decodeUCS2String([B)Ljava/lang/String;

    move-result-object v0

    .line 503
    goto :goto_0

    .line 498
    :pswitch_1
    invoke-static {v1}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->decodeUTF8String([B)Ljava/lang/String;

    move-result-object v0

    .line 499
    goto :goto_0

    .line 494
    :pswitch_2
    invoke-static {v1}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->decodeGSMPackedString([B)Ljava/lang/String;

    move-result-object v0

    .line 495
    goto :goto_0

    .line 490
    :pswitch_3
    move-object v0, p0

    .line 491
    goto :goto_0

    .line 506
    :pswitch_4
    move-object v0, p0

    .line 507
    nop

    .line 513
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static decodeUCS2String([B)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # [B

    .line 460
    const-string v0, ""

    .line 462
    .local v0, "decoded":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-16"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 467
    nop

    .line 468
    return-object v0

    .line 464
    :catch_0
    move-exception v1

    .line 466
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method static decodeUTF8String([B)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # [B

    .line 447
    const-string v0, ""

    .line 449
    .local v0, "decoded":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 454
    nop

    .line 455
    return-object v0

    .line 451
    :catch_0
    move-exception v1

    .line 453
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method private static getDialogMessage(Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "notif"    # Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;
    .param p1, "context"    # Landroid/content/Context;

    .line 550
    invoke-static {p0, p1}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->getNotifMessage(Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDialogTitle(Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "notif"    # Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;
    .param p1, "context"    # Landroid/content/Context;

    .line 544
    invoke-static {p0, p1}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->getNotifTitle(Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDlgIntent(Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;)Landroid/content/Intent;
    .locals 6
    .param p1, "notif"    # Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;

    .line 364
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 365
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->getDialogTitle(Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->getDialogMessage(Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, "message":Ljava/lang/String;
    const v3, 0x10008000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 370
    iget-object v3, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const-class v4, Lcom/qualcomm/location/NetInitiatedActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 373
    const-string v3, "notif_id"

    iget v4, p1, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    const-string v3, "title"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string v3, "message"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v3, "timeout"

    iget v4, p1, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 377
    const-string v3, "default_resp"

    iget v4, p1, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    const-string v3, "LocSvc_NiH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateIntent, title: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", timeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-object v0
.end method

.method private static getNotifMessage(Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "notif"    # Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;
    .param p1, "context"    # Landroid/content/Context;

    .line 535
    const v0, 0x1040277

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    sget-boolean v3, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v4, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 536
    invoke-static {v2, v3, v4}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    sget-boolean v3, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v4, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 537
    invoke-static {v2, v3, v4}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 535
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "message":Ljava/lang/String;
    return-object v0
.end method

.method private static getNotifTicker(Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "notif"    # Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;
    .param p1, "context"    # Landroid/content/Context;

    .line 519
    const v0, 0x1040278

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    sget-boolean v3, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v4, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 520
    invoke-static {v2, v3, v4}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    sget-boolean v3, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v4, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 521
    invoke-static {v2, v3, v4}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 519
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "ticker":Ljava/lang/String;
    return-object v0
.end method

.method private static getNotifTitle(Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "notif"    # Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;
    .param p1, "context"    # Landroid/content/Context;

    .line 528
    const v0, 0x1040279

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "title":Ljava/lang/String;
    return-object v0
.end method

.method private declared-synchronized handleNi(Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 3
    .param p1, "notif"    # Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;

    monitor-enter p0

    .line 244
    :try_start_0
    const-string v0, "LocSvc_NiH"

    const-string v1, "entering handleNi(GpsNiNotification notif)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-boolean v0, p1, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    if-eqz v0, :cond_1

    .line 246
    const-string v0, "LocSvc_NiH"

    const-string v1, "notif.needNotify is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-boolean v0, p1, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mPopupImmediately:Z

    if-eqz v0, :cond_0

    .line 249
    const-string v0, "LocSvc_NiH"

    const-string v1, "calling openNiDialog(notif)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-direct {p0, p1}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->openNiDialog(Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    goto :goto_0

    .line 253
    :cond_0
    const-string v0, "LocSvc_NiH"

    const-string v1, "calling setNiNotification(notif)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0, p1}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->setNiNotification(Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 259
    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    if-eqz v0, :cond_3

    .line 260
    :cond_2
    const-string v0, "LocSvc_NiH"

    const-string v1, "!notif.needVerify || notif.privacyOverride is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :try_start_1
    const-string v0, "LocSvc_NiH"

    const-string v1, "sending GPS_NI_RESPONSE_ACCEPT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget v1, p1, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    goto :goto_1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "LocSvc_NiH"

    const-string v2, "RemoteException in sendNiResponse"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    const-string v0, "LocSvc_NiH"

    const-string v1, "leaving handleNi(GpsNiNotification notif)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    .line 243
    .end local p1    # "notif":Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/qualcomm/location/GpsNetInitiatedHandler;
    throw p1
.end method

.method private declared-synchronized handleNiInEs(Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 6
    .param p1, "notif"    # Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;

    monitor-enter p0

    .line 274
    :try_start_0
    const-string v0, "LocSvc_NiH"

    const-string v1, "entering handleNiInEs(GpsNiNotification notif)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p0}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->readEmergencySUPLStatus()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "ril.cdma.inecmmode"

    .line 278
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 280
    .local v0, "isUEInEmergencyMode":Z
    :goto_1
    const-string v3, "LocSvc_NiH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUEInEmergencyMode is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v3, "LocSvc_NiH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readEmergencySUPLStatus() is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->readEmergencySUPLStatus()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v3, "LocSvc_NiH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Boolean.parseBoolean(SystemProperties.get(TelephonyProperties.PROPERTY_INECM_MODE)) is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ril.cdma.inecmmode"

    .line 284
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 282
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget v3, p1, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    iget v3, p1, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eq v1, v0, :cond_3

    .line 293
    const-string v1, "LocSvc_NiH"

    const-string v2, "(notif.niType == GPS_NI_TYPE_EMERGENCY_SUPL) != isUEInEmergencyMode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :try_start_1
    const-string v1, "LocSvc_NiH"

    const-string v2, "ignoring the NI"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v1, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget v2, p1, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-interface {v1, v2, v4}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "LocSvc_NiH"

    const-string v3, "RemoteException in sendNiResponse"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3
    goto :goto_4

    .line 302
    :cond_3
    const-string v1, "LocSvc_NiH"

    const-string v2, "(notif.niType == GPS_NI_TYPE_EMERGENCY_SUPL) == isUEInEmergencyMode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v1, "LocSvc_NiH"

    const-string v2, "calling handleSuplNi(notif)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-direct {p0, p1}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->handleNi(Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 306
    :goto_4
    const-string v1, "LocSvc_NiH"

    const-string v2, "leaving handleNiInEs(GpsNiNotification notif)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 273
    .end local v0    # "isUEInEmergencyMode":Z
    .end local p1    # "notif":Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/qualcomm/location/GpsNetInitiatedHandler;
    throw p1
.end method

.method private openNiDialog(Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 4
    .param p1, "notif"    # Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;

    .line 351
    invoke-direct {p0, p1}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->getDlgIntent(Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;)Landroid/content/Intent;

    move-result-object v0

    .line 353
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "LocSvc_NiH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openNiDialog, notifyId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", requestorId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v1, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 358
    return-void
.end method

.method private declared-synchronized setNiNotification(Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 7
    .param p1, "notif"    # Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;

    monitor-enter p0

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    .line 312
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-nez v0, :cond_0

    .line 314
    monitor-exit p0

    return-void

    .line 317
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->getNotifTitle(Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->getNotifMessage(Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "message":Ljava/lang/String;
    const-string v3, "LocSvc_NiH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setNiNotification, notifyId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", title: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v3, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v3, :cond_1

    .line 326
    new-instance v3, Landroid/app/NotificationChannel;

    const-string v4, "LOC_SVC_NI"

    const-string v5, "LOC_SVC_NI"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 328
    .local v3, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 329
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const-string v6, "LOC_SVC_NI"

    invoke-direct {v4, v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 331
    .end local v3    # "channel":Landroid/app/NotificationChannel;
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const v4, 0x10807cb

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 332
    iget-object v3, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 333
    iget-object v3, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 334
    iget-object v3, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 335
    iget-object v3, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 336
    iget-object v3, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 337
    iget-object v3, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v4}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->getNotifTicker(Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 338
    iget-object v3, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v4, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v4}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v4, v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 341
    iget-boolean v3, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mPopupImmediately:Z

    if-nez v3, :cond_2

    invoke-direct {p0, p1}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->getDlgIntent(Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;)Landroid/content/Intent;

    move-result-object v3

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 342
    .local v3, "intent":Landroid/content/Intent;
    :goto_0
    iget-object v4, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 343
    .local v4, "pi":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 345
    iget v5, p1, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    iget-object v6, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    monitor-exit p0

    return-void

    .line 310
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "pi":Landroid/app/PendingIntent;
    .end local p1    # "notif":Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/qualcomm/location/GpsNetInitiatedHandler;
    throw p1
.end method

.method static stringToByteArray(Ljava/lang/String;Z)[B
    .locals 5
    .param p0, "original"    # Ljava/lang/String;
    .param p1, "isHex"    # Z

    .line 388
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 389
    .local v0, "length":I
    :goto_0
    new-array v1, v0, [B

    .line 392
    .local v1, "output":[B
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 394
    nop

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 396
    mul-int/lit8 v3, v2, 0x2

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 394
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 400
    .end local v2    # "i":I
    :cond_1
    nop

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 402
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 400
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 406
    :cond_2
    return-object v1
.end method


# virtual methods
.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public handleNiNotification(Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;Z)V
    .locals 3
    .param p1, "notif"    # Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;
    .param p2, "esEnabled"    # Z

    .line 217
    const-string v0, "LocSvc_NiH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in handleNiNotification () : notificationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requestorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " esEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    if-eqz p2, :cond_0

    .line 224
    invoke-direct {p0, p1}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->handleNiInEs(Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    goto :goto_0

    .line 226
    :cond_0
    invoke-direct {p0, p1}, Lcom/qualcomm/location/GpsNetInitiatedHandler;->handleNi(Lcom/qualcomm/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 239
    :goto_0
    return-void
.end method

.method public readEmergencySUPLStatus()Z
    .locals 3

    .line 154
    monitor-enter p0

    .line 155
    :try_start_0
    const-string v0, "LocSvc_NiH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "public boolean readEmergencySUPLStatus():mIsInEmergency is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mIsInEmergency:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-boolean v0, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mIsInEmergency:Z

    monitor-exit p0

    return v0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateEmergencySUPLStatus(Z)V
    .locals 3
    .param p1, "status"    # Z

    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    const-string v0, "LocSvc_NiH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "public boolean updateEmergencySUPLStatus():mIsInEmergency is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sput-boolean p1, Lcom/qualcomm/location/GpsNetInitiatedHandler;->mIsInEmergency:Z

    .line 168
    monitor-exit p0

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
