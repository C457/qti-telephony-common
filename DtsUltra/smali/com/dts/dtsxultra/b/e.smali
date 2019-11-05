.class public Lcom/dts/dtsxultra/b/e;
.super Lcom/dts/dtsxultra/b/g;


# static fields
.field private static final Y:Ljava/lang/String;


# instance fields
.field X:Lcom/dts/dtssdk/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dts/dtssdk/c/c",
            "<",
            "Lcom/dts/dtssdk/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Landroid/support/v4/app/f;

.field private aa:Landroid/widget/ListView;

.field private ac:Landroid/widget/ProgressBar;

.field private ad:Lcom/dts/dtsxultra/views/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/b/e;->Y:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/g;-><init>()V

    new-instance v0, Lcom/dts/dtsxultra/b/e$1;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/e$1;-><init>(Lcom/dts/dtsxultra/b/e;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/e;->X:Lcom/dts/dtssdk/c/c;

    return-void
.end method

.method static synthetic R()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dts/dtsxultra/b/e;->Y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/e;)V
    .locals 2

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/e;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/e;->ad:Lcom/dts/dtsxultra/views/c;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/views/c;->a()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/e;->ad:Lcom/dts/dtsxultra/views/c;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/views/c;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/e;->ac:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/e;Lcom/dts/dtssdk/a/j;)V
    .locals 2

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/e;->Z:Landroid/support/v4/app/f;

    new-instance v1, Lcom/dts/dtsxultra/b/e$3;

    invoke-direct {v1, p0, p1}, Lcom/dts/dtsxultra/b/e$3;-><init>(Lcom/dts/dtsxultra/b/e;Lcom/dts/dtssdk/a/j;)V

    invoke-static {v0, p1, v1}, Lcom/dts/dtssdk/g;->b(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/c/b;)V

    return-void
.end method

.method static synthetic b(Lcom/dts/dtsxultra/b/e;)Lcom/dts/dtsxultra/views/c;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/e;->ad:Lcom/dts/dtsxultra/views/c;

    return-object v0
.end method

.method static synthetic c(Lcom/dts/dtsxultra/b/e;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/e;->ac:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic d(Lcom/dts/dtsxultra/b/e;)V
    .locals 4

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->c()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/b/e;->a(Lcom/dts/dtssdk/f/a;)V

    sget-object v1, Lcom/dts/dtsxultra/b/e;->Y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DTS returned error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/e;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/e;->aa:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/e;->ad:Lcom/dts/dtsxultra/views/c;

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/dts/dtsxultra/views/c;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/e;->ad:Lcom/dts/dtsxultra/views/c;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/views/c;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/dts/dtsxultra/b/e;)Landroid/support/v4/app/f;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/e;->Z:Landroid/support/v4/app/f;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/e;->i()V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/e;->e()Landroid/support/v4/app/f;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/e;->Z:Landroid/support/v4/app/f;

    const v0, 0x7f0b0034

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080125

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/e;->aa:Landroid/widget/ListView;

    const v0, 0x7f080126

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/e;->ac:Landroid/widget/ProgressBar;

    new-instance v0, Lcom/dts/dtsxultra/views/c;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/e;->Z:Landroid/support/v4/app/f;

    invoke-direct {v0, v2}, Lcom/dts/dtsxultra/views/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/e;->ad:Lcom/dts/dtsxultra/views/c;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/e;->aa:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/e;->ad:Lcom/dts/dtsxultra/views/c;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/e;->aa:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/e;->aa:Landroid/widget/ListView;

    const v2, 0x7f080121

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/e;->aa:Landroid/widget/ListView;

    new-instance v2, Lcom/dts/dtsxultra/b/e$2;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/e$2;-><init>(Lcom/dts/dtsxultra/b/e;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v1
.end method

.method public final r()V
    .locals 2

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->r()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/e;->Z:Landroid/support/v4/app/f;

    const v1, 0x7f0801af

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e005e

    invoke-virtual {p0, v1}, Lcom/dts/dtsxultra/b/e;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/e;->ad:Lcom/dts/dtsxultra/views/c;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/views/c;->a()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/e;->ac:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/e;->Z:Landroid/support/v4/app/f;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/e;->X:Lcom/dts/dtssdk/c/c;

    invoke-static {v0, v1}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/c/c;)V

    return-void
.end method

.method public final s()V
    .locals 0

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->s()V

    return-void
.end method
