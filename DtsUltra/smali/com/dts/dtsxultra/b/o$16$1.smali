.class final Lcom/dts/dtsxultra/b/o$16$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/o$16;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/dts/dtsxultra/b/o$16;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/o$16;Z)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/o$16$1;->b:Lcom/dts/dtsxultra/b/o$16;

    iput-boolean p2, p0, Lcom/dts/dtsxultra/b/o$16$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o$16$1;->b:Lcom/dts/dtsxultra/b/o$16;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/o$16;->a:Lcom/dts/dtsxultra/b/o;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/o;->e(Lcom/dts/dtsxultra/b/o;)Landroid/widget/Switch;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dts/dtsxultra/b/o$16$1;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
