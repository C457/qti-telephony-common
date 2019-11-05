.class public Lcom/dts/dtsxultra/views/d;
.super Landroid/support/v7/widget/RecyclerView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dts/dtsxultra/views/d$a;,
        Lcom/dts/dtsxultra/views/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/dts/dtsxultra/views/d$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dts/dtssdk/a/j;",
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

.field public e:Lcom/dts/dtssdk/util/d;

.field public f:Z

.field public g:Lcom/dts/dtsxultra/views/d$a;

.field private i:Landroid/view/LayoutInflater;

.field private j:Landroid/content/Context;

.field private k:Z

.field private l:I

.field private m:I

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/views/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/views/d;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dts/dtsxultra/views/d;->k:Z

    sget-object v0, Lcom/dts/dtssdk/util/d;->a:Lcom/dts/dtssdk/util/d;

    iput-object v0, p0, Lcom/dts/dtsxultra/views/d;->e:Lcom/dts/dtssdk/util/d;

    iput-boolean v1, p0, Lcom/dts/dtsxultra/views/d;->f:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/dts/dtsxultra/views/d;->m:I

    iput-boolean v1, p0, Lcom/dts/dtsxultra/views/d;->n:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/views/d;->i:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/dts/dtsxultra/views/d;->j:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dts/dtsxultra/views/d;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dts/dtsxultra/views/d;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/dts/dtsxultra/views/d;->d()I

    move-result v0

    div-int/lit8 v0, v0, 0x9

    iput v0, p0, Lcom/dts/dtsxultra/views/d;->l:I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/dts/dtsxultra/views/d;->d()I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/dts/dtsxultra/views/d;->l:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/dts/dtsxultra/views/d;I)I
    .locals 0

    iput p1, p0, Lcom/dts/dtsxultra/views/d;->m:I

    return p1
.end method

.method static synthetic a(Lcom/dts/dtsxultra/views/d;Lcom/dts/dtssdk/util/d;)Lcom/dts/dtssdk/util/d;
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/views/d;->e:Lcom/dts/dtssdk/util/d;

    return-object p1
.end method

.method static synthetic a(Lcom/dts/dtsxultra/views/d;)Lcom/dts/dtsxultra/views/d$a;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/views/d;->g:Lcom/dts/dtsxultra/views/d$a;

    return-object v0
.end method

.method static synthetic b(Lcom/dts/dtsxultra/views/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dts/dtsxultra/views/d;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/dts/dtsxultra/views/d;)I
    .locals 1

    iget v0, p0, Lcom/dts/dtsxultra/views/d;->m:I

    return v0
.end method

.method private d()I
    .locals 2

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/dts/dtsxultra/views/d;->j:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method static synthetic d(Lcom/dts/dtsxultra/views/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/views/d;->j:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    iget-object v0, p0, Lcom/dts/dtsxultra/views/d;->d:Ljava/util/HashMap;

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

.method public final a()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final synthetic a(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$w;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b003a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/dts/dtsxultra/views/d$b;

    invoke-direct {v1, p0, v0}, Lcom/dts/dtsxultra/views/d$b;-><init>(Lcom/dts/dtsxultra/views/d;Landroid/view/View;)V

    return-object v1
.end method

.method public final synthetic a(Landroid/support/v7/widget/RecyclerView$w;I)V
    .locals 6

    const v5, 0x7f05008d

    const v4, 0x7f050047

    const v3, 0x7f070079

    check-cast p1, Lcom/dts/dtsxultra/views/d$b;

    iget-object v0, p0, Lcom/dts/dtsxultra/views/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/j;

    iget-object v1, p1, Lcom/dts/dtsxultra/views/d$b;->r:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/dts/dtsxultra/views/d$b$1;

    invoke-direct {v2, p1, v0}, Lcom/dts/dtsxultra/views/d$b$1;-><init>(Lcom/dts/dtsxultra/views/d$b;Lcom/dts/dtssdk/a/j;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/dts/dtssdk/a/j;->a()Lcom/dts/dtssdk/util/d;

    move-result-object v1

    sget-object v2, Lcom/dts/dtsxultra/views/d$1;->a:[I

    invoke-virtual {v1}, Lcom/dts/dtssdk/util/d;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {v0}, Lcom/dts/dtssdk/a/j;->a()Lcom/dts/dtssdk/util/d;

    move-result-object v1

    sget-object v2, Lcom/dts/dtsxultra/views/d$1;->a:[I

    invoke-virtual {v1}, Lcom/dts/dtssdk/util/d;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    const/4 v1, -0x1

    :goto_1
    if-lez v1, :cond_0

    iget-object v2, p1, Lcom/dts/dtsxultra/views/d$b;->t:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v1, p1, Lcom/dts/dtsxultra/views/d$b;->u:Lcom/dts/dtsxultra/views/d;

    iget-object v1, v1, Lcom/dts/dtsxultra/views/d;->e:Lcom/dts/dtssdk/util/d;

    invoke-virtual {v0}, Lcom/dts/dtssdk/a/j;->a()Lcom/dts/dtssdk/util/d;

    move-result-object v0

    if-ne v1, v0, :cond_2

    iget-object v0, p1, Lcom/dts/dtsxultra/views/d$b;->u:Lcom/dts/dtsxultra/views/d;

    iget-boolean v0, v0, Lcom/dts/dtsxultra/views/d;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/dts/dtsxultra/views/d$b;->u:Lcom/dts/dtsxultra/views/d;

    invoke-virtual {p1}, Lcom/dts/dtsxultra/views/d$b;->c()I

    move-result v1

    iput v1, v0, Lcom/dts/dtsxultra/views/d;->m:I

    iget-object v0, p1, Lcom/dts/dtsxultra/views/d$b;->t:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/dts/dtsxultra/views/d$b;->u:Lcom/dts/dtsxultra/views/d;

    iget-object v1, v1, Lcom/dts/dtsxultra/views/d;->j:Landroid/content/Context;

    invoke-static {v1, v5}, Landroid/support/v4/a/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Lcom/dts/dtsxultra/views/d$b;->s:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p1, Lcom/dts/dtsxultra/views/d$b;->u:Lcom/dts/dtsxultra/views/d;

    iget-object v1, v1, Lcom/dts/dtsxultra/views/d;->j:Landroid/content/Context;

    invoke-static {v1, v5}, Landroid/support/v4/a/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p1, Lcom/dts/dtsxultra/views/d$b;->s:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_2
    return-void

    :pswitch_0
    iget-object v1, p1, Lcom/dts/dtsxultra/views/d$b;->s:Landroid/widget/ImageView;

    const v2, 0x7f070078

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p1, Lcom/dts/dtsxultra/views/d$b;->s:Landroid/widget/ImageView;

    const v2, 0x7f07007b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p1, Lcom/dts/dtsxultra/views/d$b;->s:Landroid/widget/ImageView;

    const v2, 0x7f07007a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p1, Lcom/dts/dtsxultra/views/d$b;->s:Landroid/widget/ImageView;

    const v2, 0x7f07007c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p1, Lcom/dts/dtsxultra/views/d$b;->s:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p1, Lcom/dts/dtsxultra/views/d$b;->s:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, p1, Lcom/dts/dtsxultra/views/d$b;->s:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v1, p1, Lcom/dts/dtsxultra/views/d$b;->s:Landroid/widget/ImageView;

    const v2, 0x7f070076

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :pswitch_8
    const v1, 0x7f0e005f

    goto/16 :goto_1

    :pswitch_9
    const v1, 0x7f0e0060

    goto/16 :goto_1

    :pswitch_a
    const v1, 0x7f0e0061

    goto/16 :goto_1

    :pswitch_b
    const v1, 0x7f0e0062

    goto/16 :goto_1

    :pswitch_c
    const v1, 0x7f0e0063

    goto/16 :goto_1

    :pswitch_d
    const v1, 0x7f0e0064

    goto/16 :goto_1

    :pswitch_e
    const v1, 0x7f0e0065

    goto/16 :goto_1

    :pswitch_f
    const v1, 0x7f0e0066

    goto/16 :goto_1

    :pswitch_10
    const v1, 0x7f0e0067

    goto/16 :goto_1

    :cond_1
    iget-object v0, p1, Lcom/dts/dtsxultra/views/d$b;->t:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/dts/dtsxultra/views/d$b;->u:Lcom/dts/dtsxultra/views/d;

    iget-object v1, v1, Lcom/dts/dtsxultra/views/d;->j:Landroid/content/Context;

    invoke-static {v1, v4}, Landroid/support/v4/a/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Lcom/dts/dtsxultra/views/d$b;->s:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p1, Lcom/dts/dtsxultra/views/d$b;->u:Lcom/dts/dtsxultra/views/d;

    iget-object v1, v1, Lcom/dts/dtsxultra/views/d;->j:Landroid/content/Context;

    invoke-static {v1, v4}, Landroid/support/v4/a/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p1, Lcom/dts/dtsxultra/views/d$b;->s:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_2
    iget-object v0, p1, Lcom/dts/dtsxultra/views/d$b;->t:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/dts/dtsxultra/views/d$b;->u:Lcom/dts/dtsxultra/views/d;

    iget-object v1, v1, Lcom/dts/dtsxultra/views/d;->j:Landroid/content/Context;

    const v2, 0x7f050049

    invoke-static {v1, v2}, Landroid/support/v4/a/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_9
    .end packed-switch
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/views/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final c()Lcom/dts/dtssdk/a/j;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/dts/dtsxultra/views/d;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/views/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/dts/dtsxultra/views/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/j;

    invoke-virtual {v0}, Lcom/dts/dtssdk/a/j;->a()Lcom/dts/dtssdk/util/d;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/dts/dtssdk/a/j;->a()Lcom/dts/dtssdk/util/d;

    move-result-object v3

    sget-object v4, Lcom/dts/dtssdk/util/d;->d:Lcom/dts/dtssdk/util/d;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
