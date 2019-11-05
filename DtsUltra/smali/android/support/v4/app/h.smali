.class public final Landroid/support/v4/app/h;
.super Ljava/lang/Object;


# instance fields
.field final a:Landroid/support/v4/app/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/i",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/app/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/i",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/support/v4/app/e;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->e:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->b(Ljava/lang/String;)Landroid/support/v4/app/e;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->e:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->k()V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->a:Landroid/support/v4/app/i;

    iget-object v0, v0, Landroid/support/v4/app/i;->e:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->i()Z

    move-result v0

    return v0
.end method
