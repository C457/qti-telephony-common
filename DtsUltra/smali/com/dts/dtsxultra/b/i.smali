.class public Lcom/dts/dtsxultra/b/i;
.super Lcom/dts/dtsxultra/b/g;

# interfaces
.implements Lcom/dts/dtsxultra/views/a$b;


# static fields
.field private static final ae:Ljava/lang/String;


# instance fields
.field X:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
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

.field Z:Lcom/dts/dtssdk/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dts/dtssdk/c/a",
            "<",
            "Lcom/dts/dtssdk/a/a;",
            ">;"
        }
    .end annotation
.end field

.field aa:Lcom/dts/dtssdk/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dts/dtssdk/c/c",
            "<",
            "Lcom/dts/dtssdk/a/a;",
            ">;"
        }
    .end annotation
.end field

.field ab:Lcom/dts/dtssdk/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dts/dtssdk/c/c",
            "<",
            "Lcom/dts/dtssdk/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private af:Landroid/support/v7/widget/RecyclerView;

.field private ag:Landroid/widget/ProgressBar;

.field private ah:Lcom/dts/dtsxultra/views/a;

.field private ai:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/b/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/b/i;->ae:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/g;-><init>()V

    new-instance v0, Lcom/dts/dtsxultra/b/i$3;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/i$3;-><init>(Lcom/dts/dtsxultra/b/i;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/i;->Y:Lcom/dts/dtssdk/c/c;

    new-instance v0, Lcom/dts/dtsxultra/b/i$4;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/i$4;-><init>(Lcom/dts/dtsxultra/b/i;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/i;->Z:Lcom/dts/dtssdk/c/a;

    new-instance v0, Lcom/dts/dtsxultra/b/i$5;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/i$5;-><init>(Lcom/dts/dtsxultra/b/i;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/i;->aa:Lcom/dts/dtssdk/c/c;

    new-instance v0, Lcom/dts/dtsxultra/b/i$6;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/i$6;-><init>(Lcom/dts/dtsxultra/b/i;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/i;->ab:Lcom/dts/dtssdk/c/c;

    return-void
.end method

.method static synthetic R()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dts/dtsxultra/b/i;->ae:Ljava/lang/String;

    return-object v0
.end method

.method private S()V
    .locals 4

    iget-object v0, p0, Lcom/dts/dtsxultra/b/i;->ah:Lcom/dts/dtsxultra/views/a;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/views/a;->b()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/i;->ah:Lcom/dts/dtsxultra/views/a;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/i;->ac:Landroid/support/v4/app/f;

    invoke-virtual {v1}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dts/dtsxultra/views/a;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/i;->T()V

    invoke-static {}, Lcom/dts/dtssdk/a/e;->a()Lcom/dts/dtssdk/a/e;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/i;->ac:Landroid/support/v4/app/f;

    sget-object v1, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/i;->Y:Lcom/dts/dtssdk/c/c;

    invoke-static {v0, v1, v2}, Lcom/dts/dtssdk/a/e;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/c/c;)V

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/i;->T()V

    invoke-static {}, Lcom/dts/dtssdk/a/e;->a()Lcom/dts/dtssdk/a/e;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/i;->ac:Landroid/support/v4/app/f;

    sget-object v1, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/i;->Z:Lcom/dts/dtssdk/c/a;

    invoke-static {v0, v1, v2}, Lcom/dts/dtssdk/a/e;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/c/a;)V

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/i;->T()V

    invoke-static {}, Lcom/dts/dtssdk/a/e;->a()Lcom/dts/dtssdk/a/e;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/i;->ac:Landroid/support/v4/app/f;

    sget-object v1, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/i;->aa:Lcom/dts/dtssdk/c/c;

    invoke-static {v0, v1, v2}, Lcom/dts/dtssdk/a/e;->b(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/c/c;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/i;->ac:Landroid/support/v4/app/f;

    sget-object v1, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    invoke-static {v0, v1}, Lcom/dts/dtsxultra/util/a;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/i;->T()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/dts/dtssdk/a/a/a;

    sget v3, Lcom/dts/dtssdk/a/a/a$a;->c:I

    invoke-direct {v2, v3, v0}, Lcom/dts/dtssdk/a/a/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/dts/dtssdk/a/e;->a()Lcom/dts/dtssdk/a/e;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/i;->ac:Landroid/support/v4/app/f;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/i;->ab:Lcom/dts/dtssdk/c/c;

    invoke-static {v0, v1, v2}, Lcom/dts/dtssdk/a/e;->d(Landroid/content/Context;Ljava/util/List;Lcom/dts/dtssdk/c/c;)V

    :cond_0
    return-void
.end method

.method private T()V
    .locals 2

    iget v0, p0, Lcom/dts/dtsxultra/b/i;->ai:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dts/dtsxultra/b/i;->ai:I

    iget-object v0, p0, Lcom/dts/dtsxultra/b/i;->ag:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private V()V
    .locals 4

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    sget-object v0, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    invoke-static {v0}, Lcom/dts/dtssdk/g;->a(Lcom/dts/dtssdk/util/a;)Lcom/dts/dtssdk/f/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/dts/dtsxultra/b/i;->a(Lcom/dts/dtssdk/f/a;)V

    sget-object v0, Lcom/dts/dtsxultra/b/i;->ae:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DTS returned error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/i;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/dts/dtsxultra/b/i;->ah:Lcom/dts/dtsxultra/views/a;

    iget-object v0, v1, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/dts/dtsxultra/views/a;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    iget-object v0, v1, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/dts/dtssdk/a/a/a;

    sget v3, Lcom/dts/dtssdk/a/a/a$a;->c:I

    invoke-direct {v2, v3, v0}, Lcom/dts/dtssdk/a/a/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/dts/dtssdk/a/e;->a()Lcom/dts/dtssdk/a/e;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/i;->ac:Landroid/support/v4/app/f;

    new-instance v3, Lcom/dts/dtsxultra/b/i$2;

    invoke-direct {v3, p0, v0}, Lcom/dts/dtsxultra/b/i$2;-><init>(Lcom/dts/dtsxultra/b/i;Ljava/lang/String;)V

    invoke-static {v2, v1, v3}, Lcom/dts/dtssdk/a/e;->e(Landroid/content/Context;Ljava/util/List;Lcom/dts/dtssdk/c/c;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/dts/dtsxultra/b/i;->ah:Lcom/dts/dtsxultra/views/a;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/dts/dtsxultra/b/i;->ah:Lcom/dts/dtsxultra/views/a;

    invoke-virtual {v1, v0}, Lcom/dts/dtsxultra/views/a;->d(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/i;->ah:Lcom/dts/dtsxultra/views/a;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dts/dtsxultra/b/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/i;->V()V

    return-void
.end method

.method static synthetic b(Lcom/dts/dtsxultra/b/i;)Lcom/dts/dtsxultra/views/a;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/i;->ah:Lcom/dts/dtsxultra/views/a;

    return-object v0
.end method

.method static synthetic c(Lcom/dts/dtsxultra/b/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/i;->S()V

    return-void
.end method

.method static synthetic d(Lcom/dts/dtsxultra/b/i;)V
    .locals 2

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/i;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/i;->ah:Lcom/dts/dtsxultra/views/a;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/views/a;->b()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/i;->ah:Lcom/dts/dtsxultra/views/a;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/i;->ag:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/dts/dtsxultra/b/i;)V
    .locals 2

    iget v0, p0, Lcom/dts/dtsxultra/b/i;->ai:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dts/dtsxultra/b/i;->ai:I

    iget v0, p0, Lcom/dts/dtsxultra/b/i;->ai:I

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/dts/dtsxultra/b/i;->ai:I

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/i;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/i;->ag:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/dts/dtsxultra/b/i;->V()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/i;->i()V

    const v0, 0x7f0b0034

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080159

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/i;->af:Landroid/support/v7/widget/RecyclerView;

    const v0, 0x7f08015a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/dts/dtsxultra/b/i;->ag:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/i;->ag:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/i;->X:Ljava/util/ArrayList;

    return-object v1
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const/high16 v0, 0x7f0c0000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public final a(Lcom/dts/dtssdk/a/a;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Selected headphone: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/dts/dtssdk/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/dts/dtssdk/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/i;->ac:Landroid/support/v4/app/f;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/i;->ad:Lcom/dts/dtssdk/a/j;

    sget-object v2, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    new-instance v3, Lcom/dts/dtsxultra/b/i$1;

    invoke-direct {v3, p0, p1}, Lcom/dts/dtsxultra/b/i$1;-><init>(Lcom/dts/dtsxultra/b/i;Lcom/dts/dtssdk/a/a;)V

    invoke-static {v0, v1, v2, p1, v3}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/a;Lcom/dts/dtssdk/c/b;)V

    return-void
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/dts/dtsxultra/b/g;->a(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    new-instance v1, Lcom/dts/dtsxultra/b/c;

    invoke-direct {v1}, Lcom/dts/dtsxultra/b/c;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "AudioRoute"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/dts/dtsxultra/b/c;->a(Landroid/os/Bundle;)V

    iget-object v2, p0, Landroid/support/v4/app/e;->s:Landroid/support/v4/app/k;

    invoke-virtual {v2}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/o;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/e;)Landroid/support/v4/app/o;

    invoke-virtual {v2}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/o;

    invoke-virtual {v2}, Landroid/support/v4/app/o;->c()I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f08000e
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/dts/dtsxultra/b/g;->d(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/i;->e()Landroid/support/v4/app/f;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/b/i;->ac:Landroid/support/v4/app/f;

    new-instance v0, Lcom/dts/dtsxultra/views/a;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/i;->ac:Landroid/support/v4/app/f;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/i;->X:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p0}, Lcom/dts/dtsxultra/views/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/dts/dtsxultra/views/a$b;)V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/i;->ah:Lcom/dts/dtsxultra/views/a;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/i;->af:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/i;->ah:Lcom/dts/dtsxultra/views/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/i;->af:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/i;->ac:Landroid/support/v4/app/f;

    new-instance v2, Lcom/dts/dtsxultra/b/i$7;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/i$7;-><init>(Lcom/dts/dtsxultra/b/i;)V

    invoke-virtual {v0, v1, v2}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/c/b;)V

    return-void
.end method

.method public final r()V
    .locals 2

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->r()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/i;->ac:Landroid/support/v4/app/f;

    const v1, 0x7f080205

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e0086

    invoke-virtual {p0, v1}, Lcom/dts/dtsxultra/b/i;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/dts/dtsxultra/b/i;->S()V

    return-void
.end method

.method public final s()V
    .locals 2

    invoke-super {p0}, Lcom/dts/dtsxultra/b/g;->s()V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/i;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "HeadphoneFragment"

    invoke-static {v0, v1}, Lcom/dts/dtsxultra/util/e;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/b/i;->e()Landroid/support/v4/app/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
