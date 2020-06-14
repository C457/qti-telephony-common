.class public Lcom/dts/dtsxultra/views/a;
.super Landroid/support/v7/widget/RecyclerView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dts/dtsxultra/views/a$a;,
        Lcom/dts/dtsxultra/views/a$c;,
        Lcom/dts/dtsxultra/views/a$b;
    }
.end annotation


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dts/dtssdk/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field private f:Landroid/content/Context;

.field private g:Z

.field private h:Lcom/dts/dtsxultra/views/a$b;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/views/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/views/a;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/dts/dtsxultra/views/a$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dts/dtssdk/a/a;",
            ">;",
            "Lcom/dts/dtsxultra/views/a$b;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    iput-boolean v1, p0, Lcom/dts/dtsxultra/views/a;->g:Z

    iput-boolean v1, p0, Lcom/dts/dtsxultra/views/a;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/dts/dtsxultra/views/a;->i:I

    iput-object p1, p0, Lcom/dts/dtsxultra/views/a;->f:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dts/dtsxultra/views/a;->c:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/dts/dtsxultra/views/a;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dts/dtsxultra/views/a;->d:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/dts/dtsxultra/views/a;->h:Lcom/dts/dtsxultra/views/a$b;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$a;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/dts/dtsxultra/views/a;I)I
    .locals 0

    iput p1, p0, Lcom/dts/dtsxultra/views/a;->i:I

    return p1
.end method

.method static synthetic a(Lcom/dts/dtsxultra/views/a;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/dts/dtsxultra/views/a;)Lcom/dts/dtsxultra/views/a$b;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->h:Lcom/dts/dtsxultra/views/a$b;

    return-object v0
.end method

.method static synthetic c(Lcom/dts/dtsxultra/views/a;)I
    .locals 1

    iget v0, p0, Lcom/dts/dtsxultra/views/a;->i:I

    return v0
.end method

.method private static c(Ljava/lang/String;)I
    .locals 1

    const-string v0, "Over-Ear Headphones"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e00cb

    :goto_0
    return v0

    :cond_0
    const-string v0, "Earbuds"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0e006f

    goto :goto_0

    :cond_1
    const-string v0, "External Speaker"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0e0074

    goto :goto_0

    :cond_2
    const-string v0, "Car Audio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0e0053

    goto :goto_0

    :cond_3
    const-string v0, "Earphone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0e0070

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dts/dtsxultra/views/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/dts/dtsxultra/views/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dts/dtsxultra/views/a;->g:Z

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)I
    .locals 2

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)I
    .locals 3

    const/4 v2, -0x1

    if-nez p1, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/a;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/dts/dtssdk/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$w;
    .locals 3

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b003d

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/dts/dtsxultra/views/a$c;

    invoke-direct {v0, p0, v1}, Lcom/dts/dtsxultra/views/a$c;-><init>(Lcom/dts/dtsxultra/views/a;Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b003f

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/dts/dtsxultra/views/a$a;

    invoke-direct {v0, p0, v1}, Lcom/dts/dtsxultra/views/a$a;-><init>(Lcom/dts/dtsxultra/views/a;Landroid/view/View;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$w;I)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    invoke-virtual {p0, p2}, Lcom/dts/dtsxultra/views/a;->a(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/a;

    iget-object v2, v0, Lcom/dts/dtssdk/a/a;->c:Lcom/dts/dtssdk/a/i;

    if-nez v2, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/dts/dtsxultra/views/a$c;

    iget-object v1, v1, Lcom/dts/dtsxultra/views/a$c;->u:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    move-object v1, p1

    check-cast v1, Lcom/dts/dtsxultra/views/a$c;

    iget-object v1, v1, Lcom/dts/dtsxultra/views/a$c;->s:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/dts/dtssdk/a/a;->g:Lcom/dts/dtssdk/a/a$a;

    iget-object v3, p0, Lcom/dts/dtsxultra/views/a;->f:Landroid/content/Context;

    const/4 v4, 0x2

    new-instance v5, Lcom/dts/dtsxultra/views/a$2;

    invoke-direct {v5, p0, v0, v1, v2}, Lcom/dts/dtsxultra/views/a$2;-><init>(Lcom/dts/dtsxultra/views/a;Lcom/dts/dtssdk/a/a;Landroid/widget/ImageView;Lcom/dts/dtssdk/a/a$a;)V

    invoke-virtual {v0, v3, v4, v5}, Lcom/dts/dtssdk/a/a;->a(Landroid/content/Context;ILcom/dts/dtssdk/c/a;)V

    iget-object v1, v0, Lcom/dts/dtssdk/a/a;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/dts/dtsxultra/views/a;->c(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/dts/dtsxultra/views/a$c;

    iget-object v1, v1, Lcom/dts/dtsxultra/views/a$c;->t:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/dts/dtssdk/a/a;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/dts/dtsxultra/views/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    iget-boolean v0, p0, Lcom/dts/dtsxultra/views/a;->e:Z

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/dts/dtsxultra/views/a$c;

    iget-object v0, v0, Lcom/dts/dtsxultra/views/a$c;->v:Landroid/widget/RadioButton;

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    :goto_3
    move-object v0, p1

    check-cast v0, Lcom/dts/dtsxultra/views/a$c;

    iget-object v0, v0, Lcom/dts/dtsxultra/views/a$c;->r:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/dts/dtsxultra/views/a$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/dts/dtsxultra/views/a$1;-><init>(Lcom/dts/dtsxultra/views/a;ILandroid/support/v7/widget/RecyclerView$w;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/dts/dtsxultra/views/a;->i:I

    if-ne p2, v0, :cond_3

    check-cast p1, Lcom/dts/dtsxultra/views/a$c;

    iget-object v0, p1, Lcom/dts/dtsxultra/views/a$c;->v:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/dts/dtsxultra/views/a$c;

    iget-object v1, v1, Lcom/dts/dtsxultra/views/a$c;->u:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v1, p1

    check-cast v1, Lcom/dts/dtsxultra/views/a$c;

    iget-object v1, v1, Lcom/dts/dtsxultra/views/a$c;->u:Landroid/widget/TextView;

    iget-object v2, v2, Lcom/dts/dtssdk/a/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/dts/dtsxultra/views/a$c;

    iget-object v1, v1, Lcom/dts/dtsxultra/views/a$c;->t:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/dts/dtssdk/a/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/dts/dtsxultra/views/a$c;

    iget-object v0, v0, Lcom/dts/dtsxultra/views/a$c;->v:Landroid/widget/RadioButton;

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_3

    :cond_3
    check-cast p1, Lcom/dts/dtsxultra/views/a$c;

    iget-object v0, p1, Lcom/dts/dtsxultra/views/a$c;->v:Landroid/widget/RadioButton;

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->d:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast p1, Lcom/dts/dtsxultra/views/a$a;

    iget-object v1, p1, Lcom/dts/dtsxultra/views/a$a;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/dts/dtssdk/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dts/dtssdk/a/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    return-void
.end method

.method public final b(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final b(Lcom/dts/dtssdk/a/a;)V
    .locals 3

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/dts/dtssdk/a/a;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/dts/dtssdk/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/dts/dtsxultra/views/a;->a(Lcom/dts/dtssdk/a/a;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/dts/dtsxultra/views/a;->d:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/views/a;->a(Lcom/dts/dtssdk/a/a;)V

    return-void
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/dts/dtsxultra/views/a;->i:I

    invoke-virtual {p0, p1}, Lcom/dts/dtsxultra/views/a;->c(I)V

    return-void
.end method
