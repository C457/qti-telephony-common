.class Lcom/qualcomm/location/LocationService$ReportAgpsStatusMessage;
.super Ljava/lang/Object;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportAgpsStatusMessage"
.end annotation


# instance fields
.field apnTypeMask:I

.field status:I

.field final synthetic this$0:Lcom/qualcomm/location/LocationService;

.field type:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/location/LocationService;III)V
    .locals 0
    .param p2, "type"    # I
    .param p3, "apnTypeMask"    # I
    .param p4, "status"    # I

    .line 902
    iput-object p1, p0, Lcom/qualcomm/location/LocationService$ReportAgpsStatusMessage;->this$0:Lcom/qualcomm/location/LocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 903
    iput p2, p0, Lcom/qualcomm/location/LocationService$ReportAgpsStatusMessage;->type:I

    .line 904
    iput p3, p0, Lcom/qualcomm/location/LocationService$ReportAgpsStatusMessage;->apnTypeMask:I

    .line 905
    iput p4, p0, Lcom/qualcomm/location/LocationService$ReportAgpsStatusMessage;->status:I

    .line 906
    return-void
.end method
