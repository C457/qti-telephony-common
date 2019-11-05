.class final Landroid/support/v4/e/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/e/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/e/b;->a(Landroid/content/Context;Landroid/support/v4/e/a;Landroid/support/v4/a/a/f$a;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/e/c$a",
        "<",
        "Landroid/support/v4/e/b$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/a/a/f$a;

.field final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/support/v4/a/a/f$a;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v4/e/b$2;->a:Landroid/support/v4/a/a/f$a;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/e/b$2;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Landroid/support/v4/e/b$c;

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/e/b$2;->a:Landroid/support/v4/a/a/f$a;

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/support/v4/e/b$2;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/a/f$a;->a(ILandroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/support/v4/e/b$c;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/e/b$2;->a:Landroid/support/v4/a/a/f$a;

    iget-object v1, p1, Landroid/support/v4/e/b$c;->a:Landroid/graphics/Typeface;

    iget-object v2, p0, Landroid/support/v4/e/b$2;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/a/f$a;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/e/b$2;->a:Landroid/support/v4/a/a/f$a;

    iget v1, p1, Landroid/support/v4/e/b$c;->b:I

    iget-object v2, p0, Landroid/support/v4/e/b$2;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/a/f$a;->a(ILandroid/os/Handler;)V

    goto :goto_0
.end method
