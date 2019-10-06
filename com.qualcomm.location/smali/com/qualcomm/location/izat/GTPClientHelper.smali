.class public Lcom/qualcomm/location/izat/GTPClientHelper;
.super Ljava/lang/Object;
.source "GTPClientHelper.java"


# static fields
.field public static final GTP_CLIENT_WIFI_PROVIDER:I = 0x2

.field public static final GTP_CLIENT_WIFI_RECEIVER:I = 0x1

.field public static final GTP_CLIENT_WWAN_PROVIDER:I = 0x8

.field public static final GTP_CLIENT_WWAN_RECEIVER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "GTPClientHelper"

.field private static final VERBOSE:Z

.field private static sInstance:Lcom/qualcomm/location/izat/GTPClientHelper;


# instance fields
.field private mAreClientsRegistered:Z

.field private mContext:Landroid/content/Context;

.field private mGtpClientsMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    const-string v0, "GTPClientHelper"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/location/izat/GTPClientHelper;->VERBOSE:Z

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/location/izat/GTPClientHelper;->sInstance:Lcom/qualcomm/location/izat/GTPClientHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/location/izat/GTPClientHelper;->mGtpClientsMask:I

    .line 32
    iput-boolean v0, p0, Lcom/qualcomm/location/izat/GTPClientHelper;->mAreClientsRegistered:Z

    .line 33
    iput-object p1, p0, Lcom/qualcomm/location/izat/GTPClientHelper;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public static SendPendingIntent(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "data"    # Ljava/lang/String;

    .line 69
    if-eqz p1, :cond_0

    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v0, "pdIntent":Landroid/content/Intent;
    const-string v1, "context-data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v1, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "GTPClientHelper"

    const-string v3, "Pending intent cancelled."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v0    # "pdIntent":Landroid/content/Intent;
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    goto :goto_1

    .line 78
    :cond_0
    const-string v0, "GTPClientHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pending intent is null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_1
    return-void
.end method

.method public static SetClientRegistrationStatus(Landroid/content/Context;IZ)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "clientMask"    # I
    .param p2, "status"    # Z

    .line 37
    sget-object v0, Lcom/qualcomm/location/izat/GTPClientHelper;->sInstance:Lcom/qualcomm/location/izat/GTPClientHelper;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/qualcomm/location/izat/GTPClientHelper;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/izat/GTPClientHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/location/izat/GTPClientHelper;->sInstance:Lcom/qualcomm/location/izat/GTPClientHelper;

    .line 41
    :cond_0
    if-eqz p2, :cond_1

    .line 42
    sget-object v0, Lcom/qualcomm/location/izat/GTPClientHelper;->sInstance:Lcom/qualcomm/location/izat/GTPClientHelper;

    iget v1, v0, Lcom/qualcomm/location/izat/GTPClientHelper;->mGtpClientsMask:I

    or-int/2addr v1, p1

    iput v1, v0, Lcom/qualcomm/location/izat/GTPClientHelper;->mGtpClientsMask:I

    goto :goto_0

    .line 44
    :cond_1
    sget-object v0, Lcom/qualcomm/location/izat/GTPClientHelper;->sInstance:Lcom/qualcomm/location/izat/GTPClientHelper;

    iget v1, v0, Lcom/qualcomm/location/izat/GTPClientHelper;->mGtpClientsMask:I

    not-int v2, p1

    and-int/2addr v1, v2

    iput v1, v0, Lcom/qualcomm/location/izat/GTPClientHelper;->mGtpClientsMask:I

    .line 46
    :goto_0
    sget-object v0, Lcom/qualcomm/location/izat/GTPClientHelper;->sInstance:Lcom/qualcomm/location/izat/GTPClientHelper;

    invoke-direct {v0}, Lcom/qualcomm/location/izat/GTPClientHelper;->checkStatusChange()V

    .line 47
    return-void
.end method

.method private checkStatusChange()V
    .locals 7

    .line 50
    iget v0, p0, Lcom/qualcomm/location/izat/GTPClientHelper;->mGtpClientsMask:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 52
    .local v0, "areClientsRegistered":Z
    :goto_0
    iget-boolean v3, p0, Lcom/qualcomm/location/izat/GTPClientHelper;->mAreClientsRegistered:Z

    if-eq v0, v3, :cond_2

    .line 53
    if-eqz v0, :cond_1

    move v1, v2

    nop

    .line 54
    .local v1, "optInEnabled":I
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 55
    .local v2, "i":Landroid/content/Intent;
    const-string v3, "com.qualcomm.location.XT"

    const-string v4, "com.qualcomm.location.XT.XTSrv"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v3, "FORCED_OPTIN"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    const-string v3, "izat.xt.srv.FORCE_OPTIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    :try_start_0
    const-string v3, "GTPClientHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OPT-IN Intent sending: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v3, p0, Lcom/qualcomm/location/izat/GTPClientHelper;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_1

    .line 61
    :catch_0
    move-exception v3

    .line 62
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "GTPClientHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OPT-IN Intent exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .end local v1    # "optInEnabled":I
    .end local v2    # "i":Landroid/content/Intent;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    iput-boolean v0, p0, Lcom/qualcomm/location/izat/GTPClientHelper;->mAreClientsRegistered:Z

    .line 66
    return-void
.end method
