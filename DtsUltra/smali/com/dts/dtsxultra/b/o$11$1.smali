.class final Lcom/dts/dtsxultra/b/o$11$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/o$11;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/dts/dtsxultra/b/o$11;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/o$11;Z)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/o$11$1;->b:Lcom/dts/dtsxultra/b/o$11;

    iput-boolean p2, p0, Lcom/dts/dtsxultra/b/o$11$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o$11$1;->b:Lcom/dts/dtsxultra/b/o$11;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/o$11;->a:Lcom/dts/dtsxultra/b/o;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/o;->d(Lcom/dts/dtsxultra/b/o;)Landroid/widget/Switch;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dts/dtsxultra/b/o$11$1;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
