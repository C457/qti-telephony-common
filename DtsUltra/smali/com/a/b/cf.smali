.class public abstract Lcom/a/b/cf;
.super Ljava/lang/Object;


# instance fields
.field public n:J

.field public o:Z

.field public p:I

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget v0, p0, Lcom/a/b/cf;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/b/cf;->p:I

    return-void
.end method
