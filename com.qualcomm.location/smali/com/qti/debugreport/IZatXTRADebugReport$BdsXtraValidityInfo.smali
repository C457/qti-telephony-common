.class public Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;
.super Ljava/lang/Object;
.source "IZatXTRADebugReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/debugreport/IZatXTRADebugReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BdsXtraValidityInfo"
.end annotation


# instance fields
.field private mBdsXtraAge:I

.field private mBdsXtraValidity:J

.field final synthetic this$0:Lcom/qti/debugreport/IZatXTRADebugReport;


# direct methods
.method public constructor <init>(Lcom/qti/debugreport/IZatXTRADebugReport;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qti/debugreport/IZatXTRADebugReport;

    .line 108
    iput-object p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;->this$0:Lcom/qti/debugreport/IZatXTRADebugReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;)J
    .locals 2
    .param p0, "x0"    # Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;

    .line 108
    iget-wide v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;->mBdsXtraValidity:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;J)J
    .locals 0
    .param p0, "x0"    # Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;
    .param p1, "x1"    # J

    .line 108
    iput-wide p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;->mBdsXtraValidity:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;

    .line 108
    iget v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;->mBdsXtraAge:I

    return v0
.end method

.method static synthetic access$502(Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;
    .param p1, "x1"    # I

    .line 108
    iput p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;->mBdsXtraAge:I

    return p1
.end method


# virtual methods
.method public getXtraAge()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;->mBdsXtraAge:I

    return v0
.end method

.method public getXtraValidity()J
    .locals 2

    .line 117
    iget-wide v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;->mBdsXtraValidity:J

    return-wide v0
.end method
