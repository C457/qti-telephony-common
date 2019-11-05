.class final Landroid/support/v7/app/i;
.super Landroid/support/v7/app/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/i$b;,
        Landroid/support/v7/app/i$a;,
        Landroid/support/v7/app/i$c;
    }
.end annotation


# instance fields
.field a:Landroid/support/v7/widget/ak;

.field b:Z

.field c:Landroid/view/Window$Callback;

.field private d:Z

.field private e:Z

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Runnable;

.field private final h:Landroid/support/v7/widget/Toolbar$c;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/app/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/i;->f:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v7/app/i$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/i$1;-><init>(Landroid/support/v7/app/i;)V

    iput-object v0, p0, Landroid/support/v7/app/i;->g:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v7/app/i$2;

    invoke-direct {v0, p0}, Landroid/support/v7/app/i$2;-><init>(Landroid/support/v7/app/i;)V

    iput-object v0, p0, Landroid/support/v7/app/i;->h:Landroid/support/v7/widget/Toolbar$c;

    new-instance v0, Landroid/support/v7/widget/bn;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v7/widget/bn;-><init>(Landroid/support/v7/widget/Toolbar;Z)V

    iput-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/widget/ak;

    new-instance v0, Landroid/support/v7/app/i$c;

    invoke-direct {v0, p0, p3}, Landroid/support/v7/app/i$c;-><init>(Landroid/support/v7/app/i;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Landroid/support/v7/app/i;->c:Landroid/view/Window$Callback;

    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/widget/ak;

    iget-object v1, p0, Landroid/support/v7/app/i;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/ak;->a(Landroid/view/Window$Callback;)V

    iget-object v0, p0, Landroid/support/v7/app/i;->h:Landroid/support/v7/widget/Toolbar$c;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$c;)V

    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/widget/ak;

    invoke-interface {v0, p2}, Landroid/support/v7/widget/ak;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(II)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->o()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/widget/ak;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Landroid/support/v7/widget/ak;->c(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, v0}, Landroid/support/v7/app/i;->a(II)V

    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/app/a;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/widget/ak;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ak;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/i;->a(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v7/app/i;->j()Landroid/view/Menu;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    :goto_0
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-interface {v3, p1, p2, v2}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v2

    :cond_0
    return v2

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/i;->e()Z

    :cond_0
    return v1
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/i;->a(II)V

    return-void
.end method

.method public final b(Z)V
    .locals 0

    return-void
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->o()I

    move-result v0

    return v0
.end method

.method public final c(Z)V
    .locals 0

    return-void
.end method

.method public final d()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final d(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/app/i;->e:Z

    if-ne p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-boolean p1, p0, Landroid/support/v7/app/i;->e:Z

    iget-object v0, p0, Landroid/support/v7/app/i;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/app/i;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->k()Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->l()Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/i;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/i;->g:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/h/r;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->d()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final i()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/i;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final j()Landroid/view/Menu;
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/app/i;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/widget/ak;

    new-instance v1, Landroid/support/v7/app/i$a;

    invoke-direct {v1, p0}, Landroid/support/v7/app/i$a;-><init>(Landroid/support/v7/app/i;)V

    new-instance v2, Landroid/support/v7/app/i$b;

    invoke-direct {v2, p0}, Landroid/support/v7/app/i$b;-><init>(Landroid/support/v7/app/i;)V

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/ak;->a(Landroid/support/v7/view/menu/o$a;Landroid/support/v7/view/menu/h$a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/i;->d:Z

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/widget/ak;

    invoke-interface {v0}, Landroid/support/v7/widget/ak;->q()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method
