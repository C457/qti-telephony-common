.class public Lcom/qualcomm/location/izat/debugreport/DebugReportService;
.super Ljava/lang/Object;
.source "DebugReportService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/location/izat/debugreport/DebugReportService$UserChanged;,
        Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DebugReportService"

.field private static final VERBOSE:Z

.field private static final sCallBacksLock:Ljava/lang/Object;

.field public static sInstance:Lcom/qualcomm/location/izat/debugreport/DebugReportService;


# instance fields
.field private final mBinder:Lcom/qti/debugreport/IDebugReportService$Stub;

.field private final mContext:Landroid/content/Context;

.field private mDataPerPackageAndUser:Lcom/qualcomm/location/izat/DataPerPackageAndUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qualcomm/location/izat/DataPerPackageAndUser<",
            "Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;",
            ">;"
        }
    .end annotation
.end field

.field private mDebugReportCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/qti/debugreport/IDebugReportCallback;",
            ">;"
        }
    .end annotation
.end field

.field mDebugReportTimer:Ljava/util/Timer;

.field mListGpsTimeOfReports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qti/debugreport/IZatGpsTimeDebugReport;",
            ">;"
        }
    .end annotation
.end field

.field mListOfBestLocationReports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qti/debugreport/IZatLocationReport;",
            ">;"
        }
    .end annotation
.end field

.field mListOfEPIReports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qti/debugreport/IZatLocationReport;",
            ">;"
        }
    .end annotation
.end field

.field mListOfEphmerisReports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qti/debugreport/IZatEphmerisDebugReport;",
            ">;"
        }
    .end annotation
.end field

.field mListOfErrorRecoveries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qti/debugreport/IZatErrorRecoveryReport;",
            ">;"
        }
    .end annotation
.end field

.field mListOfFixStatusReports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qti/debugreport/IZatFixStatusDebugReport;",
            ">;"
        }
    .end annotation
.end field

.field mListOfPDRReports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qti/debugreport/IZatPDRDebugReport;",
            ">;"
        }
    .end annotation
.end field

.field mListOfSVHealthReports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport;",
            ">;"
        }
    .end annotation
.end field

.field mListOfXTRAReports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qti/debugreport/IZatXTRADebugReport;",
            ">;"
        }
    .end annotation
.end field

.field mListRfStateOfReports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qti/debugreport/IZatRfStateDebugReport;",
            ">;"
        }
    .end annotation
.end field

.field mListXoStateOfReports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qti/debugreport/IZatXoStateDebugReport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    const-string v0, "DebugReportService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->VERBOSE:Z

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->sCallBacksLock:Ljava/lang/Object;

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->sInstance:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    .line 459
    invoke-static {}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->native_debugreport_class_init()V

    .line 460
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mDebugReportCallbacks:Landroid/os/RemoteCallbackList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfEphmerisReports:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfFixStatusReports:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfBestLocationReports:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfEPIReports:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListGpsTimeOfReports:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListXoStateOfReports:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListRfStateOfReports:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfErrorRecoveries:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfPDRReports:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfSVHealthReports:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfXTRAReports:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;-><init>(Lcom/qualcomm/location/izat/debugreport/DebugReportService;)V

    iput-object v0, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mBinder:Lcom/qti/debugreport/IDebugReportService$Stub;

    .line 79
    sget-boolean v0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "DebugReportService"

    const-string v1, "DebugReportService construction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/qualcomm/location/izat/debugreport/DebugReportService$UserChanged;

    invoke-direct {v2, p0}, Lcom/qualcomm/location/izat/debugreport/DebugReportService$UserChanged;-><init>(Lcom/qualcomm/location/izat/debugreport/DebugReportService;)V

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;-><init>(Landroid/content/Context;Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserChangeListener;)V

    iput-object v0, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mDataPerPackageAndUser:Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    .line 87
    invoke-direct {p0}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->native_debugreport_init()V

    .line 88
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 27
    sget-object v0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->sCallBacksLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$200(Lcom/qualcomm/location/izat/debugreport/DebugReportService;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    .line 27
    iget-object v0, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mDataPerPackageAndUser:Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qualcomm/location/izat/debugreport/DebugReportService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    .line 27
    iget-object v0, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mDebugReportCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qualcomm/location/izat/debugreport/DebugReportService;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    .line 27
    invoke-direct {p0}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->checkOnPeriodicReporting()V

    return-void
.end method

.method static synthetic access$600(Lcom/qualcomm/location/izat/debugreport/DebugReportService;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/debugreport/DebugReportService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Ljava/util/List;
    .param p5, "x5"    # Ljava/util/List;
    .param p6, "x6"    # Ljava/util/List;
    .param p7, "x7"    # Ljava/util/List;
    .param p8, "x8"    # Ljava/util/List;
    .param p9, "x9"    # Ljava/util/List;
    .param p10, "x10"    # Ljava/util/List;
    .param p11, "x11"    # Ljava/util/List;
    .param p12, "x12"    # Ljava/util/List;

    .line 27
    invoke-direct/range {p0 .. p12}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->native_debugreport_getReport(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private checkOnPeriodicReporting()V
    .locals 5

    .line 404
    const/4 v0, 0x0

    .line 406
    .local v0, "continuePeriodicReporting":Z
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mDebugReportTimer:Ljava/util/Timer;

    if-nez v1, :cond_1

    .line 407
    sget-boolean v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->VERBOSE:Z

    if-eqz v1, :cond_0

    .line 408
    const-string v1, "DebugReportService"

    const-string v2, "No peridoc reporting in progress !!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    return-void

    .line 413
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mDataPerPackageAndUser:Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    invoke-virtual {v1}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getAllData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;

    .line 414
    .local v2, "clData":Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;
    invoke-static {v2}, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;->access$700(Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 415
    const/4 v0, 0x1

    .line 416
    goto :goto_1

    .line 418
    .end local v2    # "clData":Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;
    :cond_2
    goto :goto_0

    .line 420
    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 421
    sget-boolean v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->VERBOSE:Z

    if-eqz v1, :cond_4

    .line 422
    const-string v1, "DebugReportService"

    const-string v2, "Service is stopping periodic debug reports"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_4
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mDebugReportTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 426
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mDebugReportTimer:Ljava/util/Timer;

    .line 428
    :cond_5
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/qualcomm/location/izat/debugreport/DebugReportService;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .line 72
    sget-object v0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->sInstance:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->sInstance:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    .line 75
    :cond_0
    sget-object v0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->sInstance:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    return-object v0
.end method

.method private static native native_debugreport_class_init()V
.end method

.method private native native_debugreport_deinit()V
.end method

.method private native native_debugreport_getReport(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatEphmerisDebugReport;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatFixStatusDebugReport;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatLocationReport;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatLocationReport;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatGpsTimeDebugReport;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatXoStateDebugReport;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatRfStateDebugReport;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatErrorRecoveryReport;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatPDRDebugReport;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatXTRADebugReport;",
            ">;)V"
        }
    .end annotation
.end method

.method private native native_debugreport_init()V
.end method


# virtual methods
.method public getDebugReportBinder()Lcom/qti/debugreport/IDebugReportService;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mBinder:Lcom/qti/debugreport/IDebugReportService$Stub;

    return-object v0
.end method
