.class public Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;
.super Ljava/lang/Object;
.source "IZatXTRADebugReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/debugreport/IZatXTRADebugReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GpsXtraValidityInfo"
.end annotation


# instance fields
.field private mGpsXtraAge:I

.field private mGpsXtraValidity:I

.field final synthetic this$0:Lcom/qti/debugreport/IZatXTRADebugReport;


# direct methods
.method public constructor <init>(Lcom/qti/debugreport/IZatXTRADebugReport;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qti/debugreport/IZatXTRADebugReport;

    .line 45
    iput-object p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;->this$0:Lcom/qti/debugreport/IZatXTRADebugReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;

    .line 45
    iget v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;->mGpsXtraValidity:I

    return v0
.end method

.method static synthetic access$002(Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;
    .param p1, "x1"    # I

    .line 45
    iput p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;->mGpsXtraValidity:I

    return p1
.end method

.method static synthetic access$100(Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;

    .line 45
    iget v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;->mGpsXtraAge:I

    return v0
.end method

.method static synthetic access$102(Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;
    .param p1, "x1"    # I

    .line 45
    iput p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;->mGpsXtraAge:I

    return p1
.end method


# virtual methods
.method public getGpsXtraValidity()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;->mGpsXtraValidity:I

    return v0
.end method

.method public getXtraAge()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;->mGpsXtraAge:I

    return v0
.end method
