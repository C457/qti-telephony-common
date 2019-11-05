.class final Lcom/dts/dtsxultra/activities/ListeningProfileActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtsxultra/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->onBackPressed()V
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

    iput-object p1, p0, Lcom/dts/dtsxultra/activities/ListeningProfileActivity$2;->a:Lcom/dts/dtsxultra/activities/ListeningProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dts/dtsxultra/activities/ListeningProfileActivity$2;->a:Lcom/dts/dtsxultra/activities/ListeningProfileActivity;

    const-class v2, Lcom/dts/dtsxultra/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/activities/ListeningProfileActivity$2;->a:Lcom/dts/dtsxultra/activities/ListeningProfileActivity;

    invoke-virtual {v1, v0}, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/activities/ListeningProfileActivity$2;->a:Lcom/dts/dtsxultra/activities/ListeningProfileActivity;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/activities/ListeningProfileActivity;->finish()V

    return-void
.end method
