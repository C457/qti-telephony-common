.class public Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;
.super Ljava/lang/Object;
.source "IZatXTRADebugReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/debugreport/IZatXTRADebugReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GlonassXtraValidityInfo"
.end annotation


# instance fields
.field private mGlonassXtraAge:I

.field private mGlonassXtraValidity:I

.field final synthetic this$0:Lcom/qti/debugreport/IZatXTRADebugReport;


# direct methods
.method public constructor <init>(Lcom/qti/debugreport/IZatXTRADebugReport;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qti/debugreport/IZatXTRADebugReport;

    .line 76
    iput-object p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;->this$0:Lcom/qti/debugreport/IZatXTRADebugReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;

    .line 76
    iget v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;->mGlonassXtraValidity:I

    return v0
.end method

.method static synthetic access$202(Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;
    .param p1, "x1"    # I

    .line 76
    iput p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;->mGlonassXtraValidity:I

    return p1
.end method

.method static synthetic access$300(Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;

    .line 76
    iget v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;->mGlonassXtraAge:I

    return v0
.end method

.method static synthetic access$302(Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;
    .param p1, "x1"    # I

    .line 76
    iput p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;->mGlonassXtraAge:I

    return p1
.end method


# virtual methods
.method public getXtraAge()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;->mGlonassXtraAge:I

    return v0
.end method

.method public getXtraValidity()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;->mGlonassXtraValidity:I

    return v0
.end method
