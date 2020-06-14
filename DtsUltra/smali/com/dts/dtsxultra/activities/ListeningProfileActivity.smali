.class public Lcom/dts/dtsxultra/activities/ListeningProfileActivity;
.super Landroid/support/v7/app/c;

# interfaces
.implements Lcom/dts/dtsxultra/c/c;


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field private k:Landroid/widget/LinearLayout;

.field private l:Z

.field private m:Lcom/dts/dtsxultra/b/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/c;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/dts/dtsxultra/c/b;)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f00c7

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0051

    new-instance v3, Lcom/dts/dtsxultra/activities/ListeningProfileActivity$4;

    invoke-direct {v3, p0}, Lcom/dts/dtsxultra/activities/ListeningProfileActivity$4;-><init>(Lcom/dts/dtsxultra/activities/ListeningProfileActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/dts/dtsxultra/activities/ListeningProfileActivity$3;

    invoke-direct {v2, p0, p3}, Lcom/dts/dtsxultra/activities/ListeningProfileActivity$3;-><init>(Lcom/dts/dtsxultra/activities/ListeningProfileActivity;Lcom/dts/dtsxultra/c/b;)V

    invoke-virtual {v1, p2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->k:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    new-instance v1, Lcom/dts/dtsxultra/activities/ListeningProfileActivity$5;

    invoke-direct {v1, p0}, Lcom/dts/dtsxultra/activities/ListeningProfileActivity$5;-><init>(Lcom/dts/dtsxultra/activities/ListeningProfileActivity;)V

    iget-object v2, v0, Landroid/support/design/widget/BaseTransientBottomBar;->d:Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroid/support/design/widget/BaseTransientBottomBar;->d:Ljava/util/List;

    :cond_0
    iget-object v2, v0, Landroid/support/design/widget/BaseTransientBottomBar;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    return-void
.end method

.method public final f()Z
    .locals 3

    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dts/dtsxultra/activities/ListeningProfileActivity$1;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/activities/ListeningProfileActivity$1;-><init>(Lcom/dts/dtsxultra/activities/ListeningProfileActivity;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/dts/dtsxultra/c/b;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dts/dtsxultra/activities/ListeningProfileActivity$2;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/activities/ListeningProfileActivity$2;-><init>(Lcom/dts/dtsxultra/activities/ListeningProfileActivity;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/dts/dtsxultra/c/b;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/app/c;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->setContentView(I)V

    const v0, 0x7f08016a

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->k:Landroid/widget/LinearLayout;

    const v0, 0x7f08016b

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->a(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->a()Landroid/support/v7/app/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->a(Z)V

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->a()Landroid/support/v7/app/a;

    invoke-virtual {p0}, Landroid/support/v7/app/c;->g()Landroid/support/v7/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/e;->a()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->a()V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->e()Landroid/support/v4/app/j;

    move-result-object v1

    const-string v0, "listening_profile"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/j;->a(Ljava/lang/String;)Landroid/support/v4/app/e;

    move-result-object v0

    check-cast v0, Lcom/dts/dtsxultra/b/k;

    iput-object v0, p0, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->m:Lcom/dts/dtsxultra/b/k;

    iget-object v0, p0, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->m:Lcom/dts/dtsxultra/b/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dts/dtsxultra/b/k;

    invoke-direct {v0}, Lcom/dts/dtsxultra/b/k;-><init>()V

    iput-object v0, p0, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->m:Lcom/dts/dtsxultra/b/k;

    invoke-virtual {v1}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->m:Lcom/dts/dtsxultra/b/k;

    const-string v2, "listening_profile"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/e;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->c()I

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/app/c;->onPause()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPause mDtsEnabled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->l:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Z)Lcom/dts/dtssdk/f/a;

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/app/c;->onResume()V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->b()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->l:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResume mDtsEnabled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Z)Lcom/dts/dtssdk/f/a;

    iget-boolean v0, p0, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->l:Z

    invoke-static {p0, v0}, Lcom/dts/dtsxultra/util/e;->a(Landroid/content/Context;Z)V

    return-void
.end method
