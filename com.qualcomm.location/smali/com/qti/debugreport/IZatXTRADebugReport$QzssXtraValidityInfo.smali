.class public Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;
.super Ljava/lang/Object;
.source "IZatXTRADebugReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/debugreport/IZatXTRADebugReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QzssXtraValidityInfo"
.end annotation


# instance fields
.field private mQzssXtraAge:I

.field private mQzssXtraValidity:B

.field final synthetic this$0:Lcom/qti/debugreport/IZatXTRADebugReport;


# direct methods
.method public constructor <init>(Lcom/qti/debugreport/IZatXTRADebugReport;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qti/debugreport/IZatXTRADebugReport;

    .line 170
    iput-object p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;->this$0:Lcom/qti/debugreport/IZatXTRADebugReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$800(Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;)B
    .locals 1
    .param p0, "x0"    # Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;

    .line 170
    iget-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;->mQzssXtraValidity:B

    return v0
.end method

.method static synthetic access$802(Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;B)B
    .locals 0
    .param p0, "x0"    # Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;
    .param p1, "x1"    # B

    .line 170
    iput-byte p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;->mQzssXtraValidity:B

    return p1
.end method

.method static synthetic access$900(Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;

    .line 170
    iget v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;->mQzssXtraAge:I

    return v0
.end method

.method static synthetic access$902(Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;
    .param p1, "x1"    # I

    .line 170
    iput p1, p0, Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;->mQzssXtraAge:I

    return p1
.end method


# virtual methods
.method public getXtraAge()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;->mQzssXtraAge:I

    return v0
.end method

.method public getXtraValidity()B
    .locals 1

    .line 179
    iget-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;->mQzssXtraValidity:B

    return v0
.end method
