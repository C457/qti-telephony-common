.class final Lcom/dts/dtsxultra/b/o$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/o;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/o;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/o$9;->a:Lcom/dts/dtsxultra/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dts/dtssdk/f/a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/dts/dtssdk/a/j;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/o$9;->a:Lcom/dts/dtsxultra/b/o;

    invoke-static {v1, v0}, Lcom/dts/dtsxultra/b/o;->a(Lcom/dts/dtsxultra/b/o;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/a/j;

    :cond_0
    return-void
.end method
