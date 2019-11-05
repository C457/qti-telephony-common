.class public Lcom/dts/dtsxultra/b/d;
.super Lcom/dts/dtsxultra/b/g;


# static fields
.field private static final Z:Ljava/lang/String;


# instance fields
.field X:Lcom/dts/dtssdk/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dts/dtssdk/c/c",
            "<",
            "Lcom/dts/dtssdk/a/a;",
            ">;"
        }
    .end annotation
.end field

.field Y:Lcom/dts/dtssdk/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dts/dtssdk/c/c",
            "<",
            "Lcom/dts/dtssdk/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private aa:Landroid/support/v4/app/f;

.field private ac:Landroid/support/design/widget/TabLayout$f;

.field private ad:Landroid/support/design/widget/TabLayout$f;

.field private ae:Landroid/widget/TextView;

.field private af:Landroid/widget/TextView;

.field private ag:Landroid/widget/ImageView;

.field private ah:Landroid/widget/ImageView;

.field private ai:Landroid/widget/ListView;

.field private aj:Landroid/widget/ProgressBar;

.field private ak:Lcom/dts/dtsxultra/views/a;

.field private al:Lcom/dts/dtsxultra/views/a;

.field private am:Landroid/content/res/ColorStateList;

.field private an:Landroid/content/res/ColorStateList;

.field private ao:Lcom/dts/dtssdk/a/i;

.field private ap:Lcom/dts/dtssdk/util/a;

.field private aq:Lcom/dts/dtssdk/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/b/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/b/d;->Z:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/g;-><init>()V

    sget-object v0, Lcom/dts/dtssdk/util/a;->a:Lcom/dts/dtssdk/util/a;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/d;->ap:Lcom/dts/dtssdk/util/a;

    new-instance v0, Lcom/dts/dtsxultra/b/d$1;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/d$1;-><init>(Lcom/dts/dtsxultra/b/d;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/d;->X:Lcom/dts/dtssdk/c/c;

    new-instance v0, Lcom/dts/dtsxultra/b/d$2;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/d$2;-><init>(Lcom/dts/dtsxultra/b/d;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/d;->Y:Lcom/dts/dtssdk/c/c;

    return-void
.end method

.method static synthetic R()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dts/dtsxultra/b/d;->Z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/d;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/a/j;
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/d;->aq:Lcom/dts/dtssdk/a/j;

    return-object p1
.end method

.method private a(Landroid/support/design/widget/TabLayout$f;)V
    .locals 4

    const v3, 0x7f05008d

    const v2, 0x7f050049

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->ac:Landroid/support/design/widget/TabLayout$f;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->ae:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/d;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->ag:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->am:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->af:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/d;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->ah:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->an:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->ai:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->ak:Lcom/dts/dtsxultra/views/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->ae:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/d;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->ag:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->an:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->af:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/d;->f()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->ah:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->am:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->ai:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->al:Lcom/dts/dtsxultra/views/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/d;)V
    .locals 2

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->al:Lcom/dts/dtsxultra/views/a;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/views/a;->a()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->ak:Lcom/dts/dtsxultra/views/a;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/views/a;->a()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->al:Lcom/dts/dtsxultra/views/a;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/views/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->ak:Lcom/dts/dtsxultra/views/a;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/views/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->aj:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/d;Landroid/support/design/widget/TabLayout$f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/b/d;->a(Landroid/support/design/widget/TabLayout$f;)V

    return-void
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/d;Lcom/dts/dtssdk/a/a;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Selected headphone: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/dts/dtssdk/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->aj:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->aa:Landroid/support/v4/app/f;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->aq:Lcom/dts/dtssdk/a/j;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/d;->ap:Lcom/dts/dtssdk/util/a;

    new-instance v3, Lcom/dts/dtsxultra/b/d$5;

    invoke-direct {v3, p0, p1, p1}, Lcom/dts/dtsxultra/b/d$5;-><init>(Lcom/dts/dtsxultra/b/d;Lcom/dts/dtssdk/a/a;Lcom/dts/dtssdk/a/a;)V

    invoke-static {v0, v1, v2, p1, v3}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/a;Lcom/dts/dtssdk/c/b;)V

    return-void
.end method

.method static synthetic b(Lcom/dts/dtsxultra/b/d;)Lcom/dts/dtssdk/util/a;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->ap:Lcom/dts/dtssdk/util/a;

    return-object v0
.end method

.method static synthetic c(Lcom/dts/dtsxultra/b/d;)Lcom/dts/dtsxultra/views/a;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->al:Lcom/dts/dtsxultra/views/a;

    return-object v0
.end method

.method static synthetic d(Lcom/dts/dtsxultra/b/d;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->aj:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic e(Lcom/dts/dtsxultra/b/d;)Lcom/dts/dtsxultra/views/a;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->ak:Lcom/dts/dtsxultra/views/a;

    return-object v0
.end method

.method static synthetic f(Lcom/dts/dtsxultra/b/d;)Lcom/dts/dtssdk/a/i;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->ao:Lcom/dts/dtssdk/a/i;

    return-object v0
.end method

.method static synthetic g(Lcom/dts/dtsxultra/b/d;)Landroid/support/v4/app/f;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->aa:Landroid/support/v4/app/f;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const v9, 0x7f0b0057

    const v8, 0x7f08019e

    const v7, 0x7f08019d

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/d;->i()V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/d;->e()Landroid/support/v4/app/f;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/d;->aa:Landroid/support/v4/app/f;

    const v0, 0x7f0b002e

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f08003e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    const v1, 0x7f08003d

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/dts/dtsxultra/b/d;->aj:Landroid/widget/ProgressBar;

    const v1, 0x7f08003c

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/dts/dtsxultra/b/d;->ai:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->ai:Landroid/widget/ListView;

    const v3, 0x7f08003b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->ai:Landroid/widget/ListView;

    new-instance v3, Lcom/dts/dtsxultra/b/d$3;

    invoke-direct {v3, p0}, Lcom/dts/dtsxultra/b/d$3;-><init>(Lcom/dts/dtsxultra/b/d;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/d;->f()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f05008d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/dts/dtsxultra/b/d;->am:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/d;->f()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f050049

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/dts/dtsxultra/b/d;->an:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->a()Landroid/support/design/widget/TabLayout$f;

    move-result-object v1

    iput-object v1, p0, Lcom/dts/dtsxultra/b/d;->ac:Landroid/support/design/widget/TabLayout$f;

    invoke-virtual {p1, v9, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dts/dtsxultra/b/d;->ae:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->ae:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/dts/dtsxultra/b/d;->aa:Landroid/support/v4/app/f;

    invoke-virtual {v4}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0089

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/dts/dtsxultra/b/d;->ag:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->ag:Landroid/widget/ImageView;

    const v4, 0x7f07009e

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->ag:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/dts/dtsxultra/b/d;->an:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->ac:Landroid/support/design/widget/TabLayout$f;

    invoke-virtual {v1, v3}, Landroid/support/design/widget/TabLayout$f;->a(Landroid/view/View;)Landroid/support/design/widget/TabLayout$f;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->ac:Landroid/support/design/widget/TabLayout$f;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$f;)V

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->a()Landroid/support/design/widget/TabLayout$f;

    move-result-object v1

    iput-object v1, p0, Lcom/dts/dtsxultra/b/d;->ad:Landroid/support/design/widget/TabLayout$f;

    invoke-virtual {p1, v9, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/dts/dtsxultra/b/d;->af:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->af:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/dts/dtsxultra/b/d;->aa:Landroid/support/v4/app/f;

    invoke-virtual {v4}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0088

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/dts/dtsxultra/b/d;->ah:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->ah:Landroid/widget/ImageView;

    const v4, 0x7f07007d

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->ah:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/dts/dtsxultra/b/d;->an:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->ad:Landroid/support/design/widget/TabLayout$f;

    invoke-virtual {v1, v3}, Landroid/support/design/widget/TabLayout$f;->a(Landroid/view/View;)Landroid/support/design/widget/TabLayout$f;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->ad:Landroid/support/design/widget/TabLayout$f;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$f;)V

    new-instance v1, Lcom/dts/dtsxultra/b/d$4;

    invoke-direct {v1, p0}, Lcom/dts/dtsxultra/b/d$4;-><init>(Lcom/dts/dtsxultra/b/d;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$b;)V

    new-instance v0, Lcom/dts/dtsxultra/views/a;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->aa:Landroid/support/v4/app/f;

    invoke-direct {v0, v1}, Lcom/dts/dtsxultra/views/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/d;->ak:Lcom/dts/dtsxultra/views/a;

    new-instance v0, Lcom/dts/dtsxultra/views/a;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->aa:Landroid/support/v4/app/f;

    invoke-direct {v0, v1}, Lcom/dts/dtsxultra/views/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/d;->al:Lcom/dts/dtsxultra/views/a;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->ak:Lcom/dts/dtsxultra/views/a;

    iput-boolean v6, v0, Lcom/dts/dtsxultra/views/a;->c:Z

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->al:Lcom/dts/dtsxultra/views/a;

    iput-boolean v6, v0, Lcom/dts/dtsxultra/views/a;->c:Z

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->ac:Landroid/support/design/widget/TabLayout$f;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$f;->a()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->ac:Landroid/support/design/widget/TabLayout$f;

    invoke-direct {p0, v0}, Lcom/dts/dtsxultra/b/d;->a(Landroid/support/design/widget/TabLayout$f;)V

    return-object v2
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/dts/dtsxultra/b/g;->b(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->aa:Landroid/support/v4/app/f;

    new-instance v2, Lcom/dts/dtsxultra/b/d$6;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/d$6;-><init>(Lcom/dts/dtsxultra/b/d;)V

    invoke-virtual {v0, v1, v2}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/c/b;)V

    return-void
.end method

.method public final r()V
    .locals 3

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->r()V

    iget-object v0, p0, Landroid/support/v4/app/e;->h:Landroid/os/Bundle;

    const-string v1, "Brand"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/i;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/d;->ao:Lcom/dts/dtssdk/a/i;

    iget-object v0, p0, Landroid/support/v4/app/e;->h:Landroid/os/Bundle;

    const-string v1, "AudioRoute"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/d;->ap:Lcom/dts/dtssdk/util/a;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->aa:Landroid/support/v4/app/f;

    const v1, 0x7f0801af

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->ao:Lcom/dts/dtssdk/a/i;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->ao:Lcom/dts/dtssdk/a/i;

    iget-object v1, v1, Lcom/dts/dtssdk/a/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->al:Lcom/dts/dtsxultra/views/a;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/views/a;->a()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->ak:Lcom/dts/dtsxultra/views/a;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/views/a;->a()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d;->aj:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->ap:Lcom/dts/dtssdk/util/a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->ap:Lcom/dts/dtssdk/util/a;

    sget-object v2, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->ao:Lcom/dts/dtssdk/a/i;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/dts/dtssdk/a/a$a;->b:Lcom/dts/dtssdk/a/a$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/dts/dtssdk/a/e;->a()Lcom/dts/dtssdk/a/e;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/d;->aa:Landroid/support/v4/app/f;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/d;->Y:Lcom/dts/dtssdk/c/c;

    invoke-static {v1, v0, v2}, Lcom/dts/dtssdk/a/e;->d(Landroid/content/Context;Ljava/util/List;Lcom/dts/dtssdk/c/c;)V

    return-void

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/d;->ap:Lcom/dts/dtssdk/util/a;

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/d;->ap:Lcom/dts/dtssdk/util/a;

    goto :goto_0

    :cond_4
    const-string v1, "No brands"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final s()V
    .locals 0

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->s()V

    return-void
.end method
