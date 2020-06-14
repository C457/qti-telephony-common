.class public final Lcom/dts/dtsxultra/views/b;
.super Landroid/support/v7/widget/RecyclerView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dts/dtsxultra/views/b$b;,
        Lcom/dts/dtsxultra/views/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/dts/dtsxultra/views/b$b;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dts/dtssdk/a/i;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/dts/dtsxultra/views/b$a;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dts/dtsxultra/views/b$a;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dts/dtsxultra/views/b;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/dts/dtsxultra/views/b;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/dts/dtsxultra/views/b;->d:Lcom/dts/dtsxultra/views/b$a;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/views/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$w;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b003c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/dts/dtsxultra/views/b$b;

    invoke-direct {v1, p0, v0}, Lcom/dts/dtsxultra/views/b$b;-><init>(Lcom/dts/dtsxultra/views/b;Landroid/view/View;)V

    return-object v1
.end method

.method public final synthetic a(Landroid/support/v7/widget/RecyclerView$w;I)V
    .locals 2

    check-cast p1, Lcom/dts/dtsxultra/views/b$b;

    iget-object v1, p1, Lcom/dts/dtsxultra/views/b$b;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dts/dtsxultra/views/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/i;

    iget-object v0, v0, Lcom/dts/dtssdk/a/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/dts/dtsxultra/views/b$b;->r:Landroid/widget/TextView;

    new-instance v1, Lcom/dts/dtsxultra/views/b$1;

    invoke-direct {v1, p0, p2}, Lcom/dts/dtsxultra/views/b$1;-><init>(Lcom/dts/dtsxultra/views/b;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
