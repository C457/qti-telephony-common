.class Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;
.super Lcom/qualcomm/location/izat/CallbackData;
.source "DebugReportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/izat/debugreport/DebugReportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientDebugReportData"
.end annotation


# instance fields
.field private mCallback:Lcom/qti/debugreport/IDebugReportCallback;

.field private mReportPeriodic:Z

.field final synthetic this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;


# direct methods
.method public constructor <init>(Lcom/qualcomm/location/izat/debugreport/DebugReportService;Lcom/qti/debugreport/IDebugReportCallback;)V
    .locals 0
    .param p2, "callback"    # Lcom/qti/debugreport/IDebugReportCallback;

    .line 41
    iput-object p1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    invoke-direct {p0}, Lcom/qualcomm/location/izat/CallbackData;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;->mCallback:Lcom/qti/debugreport/IDebugReportCallback;

    .line 43
    iput-object p2, p0, Lcom/qualcomm/location/izat/CallbackData;->mCallback:Landroid/os/IInterface;

    .line 44
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;->mReportPeriodic:Z

    .line 45
    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;)Lcom/qti/debugreport/IDebugReportCallback;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;

    .line 37
    iget-object v0, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;->mCallback:Lcom/qti/debugreport/IDebugReportCallback;

    return-object v0
.end method

.method static synthetic access$302(Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;Lcom/qti/debugreport/IDebugReportCallback;)Lcom/qti/debugreport/IDebugReportCallback;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;
    .param p1, "x1"    # Lcom/qti/debugreport/IDebugReportCallback;

    .line 37
    iput-object p1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;->mCallback:Lcom/qti/debugreport/IDebugReportCallback;

    return-object p1
.end method

.method static synthetic access$700(Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;

    .line 37
    iget-boolean v0, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;->mReportPeriodic:Z

    return v0
.end method

.method static synthetic access$702(Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;
    .param p1, "x1"    # Z

    .line 37
    iput-boolean p1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;->mReportPeriodic:Z

    return p1
.end method
