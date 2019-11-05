.class final Lcom/dts/dtsxultra/b/o$16;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/util/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/o;->s()V
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

    iput-object p1, p0, Lcom/dts/dtsxultra/b/o$16;->a:Lcom/dts/dtsxultra/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o$16;->a:Lcom/dts/dtsxultra/b/o;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/o;->a(Lcom/dts/dtsxultra/b/o;)Landroid/support/v4/app/f;

    move-result-object v0

    new-instance v1, Lcom/dts/dtsxultra/b/o$16$1;

    invoke-direct {v1, p0, p1}, Lcom/dts/dtsxultra/b/o$16$1;-><init>(Lcom/dts/dtsxultra/b/o$16;Z)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/dts/dtsxultra/b/o;->R()Ljava/lang/String;

    return-void
.end method
