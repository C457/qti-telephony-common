.class public Lcom/dts/dtsxultra/b/c;
.super Lcom/dts/dtsxultra/b/g;

# interfaces
.implements Lcom/dts/dtsxultra/views/b$a;


# static fields
.field private static final Y:Ljava/lang/String;


# instance fields
.field X:Lcom/dts/dtssdk/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dts/dtssdk/c/c",
            "<",
            "Lcom/dts/dtssdk/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Landroid/support/v7/widget/RecyclerView;

.field private aa:Landroid/widget/ProgressBar;

.field private ab:Lcom/dts/dtsxultra/views/b;

.field private ae:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/b/c;->Y:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/g;-><init>()V

    new-instance v0, Lcom/dts/dtsxultra/b/c$1;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/c$1;-><init>(Lcom/dts/dtsxultra/b/c;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/c;->X:Lcom/dts/dtssdk/c/c;

    return-void
.end method

.method static synthetic R()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dts/dtsxultra/b/c;->Y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/c;)V
    .locals 2

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/c;->ab:Lcom/dts/dtsxultra/views/b;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/c;->aa:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/dts/dtsxultra/b/c;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/c;->aa:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic c(Lcom/dts/dtsxultra/b/c;)Lcom/dts/dtsxultra/views/b;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/c;->ab:Lcom/dts/dtsxultra/views/b;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/c;->i()V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/c;->e()Landroid/support/v4/app/f;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/c;->ac:Landroid/support/v4/app/f;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/c;->ac:Landroid/support/v4/app/f;

    const v1, 0x7f080205

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e004f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b0035

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0800ef

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/c;->Z:Landroid/support/v7/widget/RecyclerView;

    const v0, 0x7f08015a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/c;->aa:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/c;->Z:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/dts/dtsxultra/views/e;

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/c;->e()Landroid/support/v4/app/f;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/dts/dtsxultra/views/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$h;)V

    new-instance v0, Lcom/dts/dtsxultra/views/b;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/c;->ac:Landroid/support/v4/app/f;

    invoke-direct {v0, v2, p0}, Lcom/dts/dtsxultra/views/b;-><init>(Landroid/content/Context;Lcom/dts/dtsxultra/views/b$a;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/c;->ab:Lcom/dts/dtsxultra/views/b;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/c;->Z:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/c;->ab:Lcom/dts/dtsxultra/views/b;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/c;->Z:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    return-object v1
.end method

.method public final a(Lcom/dts/dtssdk/a/i;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "User selected brand: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/dts/dtssdk/a/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/dts/dtsxultra/b/d;

    invoke-direct {v0}, Lcom/dts/dtsxultra/b/d;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "Brand"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "AudioRoute"

    iget v3, p0, Lcom/dts/dtsxultra/b/c;->ae:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/dts/dtsxultra/b/d;->a(Landroid/os/Bundle;)V

    iget-object v1, p0, Landroid/support/v4/app/e;->s:Landroid/support/v4/app/k;

    invoke-virtual {v1}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/e;)Landroid/support/v4/app/o;

    invoke-virtual {v1}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/o;

    invoke-virtual {v1}, Landroid/support/v4/app/o;->c()I

    return-void
.end method

.method public final r()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->r()V

    sget-object v0, Lcom/dts/dtssdk/util/a;->a:Lcom/dts/dtssdk/util/a;

    iget-object v1, p0, Landroid/support/v4/app/e;->h:Landroid/os/Bundle;

    const-string v2, "AudioRoute"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/dts/dtsxultra/b/c;->ae:I

    iget v1, p0, Lcom/dts/dtsxultra/b/c;->ae:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    sget-object v0, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/dts/dtsxultra/b/c;->aa:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/dts/dtsxultra/b/c;->ae:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/e;->h:Landroid/os/Bundle;

    const-string v2, "ShowWiredForUsb"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/dts/dtssdk/a/e;->a()Lcom/dts/dtssdk/a/e;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/c;->ac:Landroid/support/v4/app/f;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/c;->X:Lcom/dts/dtssdk/c/c;

    invoke-static {v0, v1, v2}, Lcom/dts/dtssdk/a/e;->a(Landroid/content/Context;Ljava/util/List;Lcom/dts/dtssdk/c/c;)V

    return-void

    :cond_2
    iget v1, p0, Lcom/dts/dtsxultra/b/c;->ae:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    sget-object v0, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/dts/dtsxultra/b/c;->ae:I

    if-ne v1, v4, :cond_0

    sget-object v0, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    goto :goto_0
.end method

.method public final s()V
    .locals 0

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->s()V

    return-void
.end method
