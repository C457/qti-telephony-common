.class final Lcom/dts/dtsxultra/views/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/views/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/dts/dtsxultra/views/b;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/views/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/views/b$1;->b:Lcom/dts/dtsxultra/views/b;

    iput p2, p0, Lcom/dts/dtsxultra/views/b$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/dts/dtsxultra/views/b$1;->b:Lcom/dts/dtsxultra/views/b;

    iget-object v1, v0, Lcom/dts/dtsxultra/views/b;->d:Lcom/dts/dtsxultra/views/b$a;

    iget-object v0, p0, Lcom/dts/dtsxultra/views/b$1;->b:Lcom/dts/dtsxultra/views/b;

    iget-object v0, v0, Lcom/dts/dtsxultra/views/b;->c:Ljava/util/ArrayList;

    iget v2, p0, Lcom/dts/dtsxultra/views/b$1;->a:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/i;

    invoke-interface {v1, v0}, Lcom/dts/dtsxultra/views/b$a;->a(Lcom/dts/dtssdk/a/i;)V

    return-void
.end method
