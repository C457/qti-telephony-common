.class final Lcom/dts/dtsxultra/activities/ListeningProfileActivity$5;
.super Landroid/support/design/widget/Snackbar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/activities/ListeningProfileActivity;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/activities/ListeningProfileActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/activities/ListeningProfileActivity$5;->a:Lcom/dts/dtsxultra/activities/ListeningProfileActivity;

    invoke-direct {p0}, Landroid/support/design/widget/Snackbar$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/design/widget/Snackbar;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/support/design/widget/Snackbar$a;->a(Landroid/support/design/widget/Snackbar;I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dts/dtsxultra/activities/ListeningProfileActivity$5;->a:Lcom/dts/dtsxultra/activities/ListeningProfileActivity;

    const-class v2, Lcom/dts/dtsxultra/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/activities/ListeningProfileActivity$5;->a:Lcom/dts/dtsxultra/activities/ListeningProfileActivity;

    invoke-virtual {v1, v0}, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/activities/ListeningProfileActivity$5;->a:Lcom/dts/dtsxultra/activities/ListeningProfileActivity;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->finish()V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Landroid/support/design/widget/Snackbar;

    invoke-virtual {p0, p1, p2}, Lcom/dts/dtsxultra/activities/ListeningProfileActivity$5;->a(Landroid/support/design/widget/Snackbar;I)V

    return-void
.end method
