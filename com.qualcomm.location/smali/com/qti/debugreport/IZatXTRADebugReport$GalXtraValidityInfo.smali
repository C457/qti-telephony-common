.class public Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;
.super Ljava/lang/Object;
.source "IZatXTRADebugReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/debugreport/IZatXTRADebugReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GalXtraValidityInfo"
.end annotation


# instance fields
.field private mGalXtraAge:I

.field private mGalXtraValidity:J

.field final synthetic this$0:Lcom/qti/debugreport/IZatXTRADebugReport;


# direct methods
.method public constructor <init>(Lcom/qti/debugreport/IZatXTRADebugReport;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qti/debugreport/IZatXTRADebugReport;

    .line 139
    iput-object p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;->this$0:Lcom/qti/debugreport/IZatXTRADebugReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;)J
    .locals 2
    .param p0, "x0"    # Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;

    .line 139
    iget-wide v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;->mGalXtraValidity:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;J)J
    .locals 0
    .param p0, "x0"    # Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;
    .param p1, "x1"    # J

    .line 139
    iput-wide p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;->mGalXtraValidity:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;

    .line 139
    iget v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;->mGalXtraAge:I

    return v0
.end method

.method static synthetic access$702(Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;
    .param p1, "x1"    # I

    .line 139
    iput p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;->mGalXtraAge:I

    return p1
.end method


# virtual methods
.method public getXtraAge()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;->mGalXtraAge:I

    return v0
.end method

.method public getXtraValidity()J
    .locals 2

    .line 148
    iget-wide v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;->mGalXtraValidity:J

    return-wide v0
.end method
