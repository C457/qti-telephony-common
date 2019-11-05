.class public final Landroid/support/v4/f/a$a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/f/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/text/TextPaint;

.field public b:Landroid/text/TextDirectionHeuristic;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Landroid/text/TextPaint;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/f/a$a$a;->a:Landroid/text/TextPaint;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iput v2, p0, Landroid/support/v4/f/a$a$a;->c:I

    iput v2, p0, Landroid/support/v4/f/a$a$a;->d:I

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v0, p0, Landroid/support/v4/f/a$a$a;->b:Landroid/text/TextDirectionHeuristic;

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/f/a$a$a;->d:I

    iput v0, p0, Landroid/support/v4/f/a$a$a;->c:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/f/a$a$a;->b:Landroid/text/TextDirectionHeuristic;

    goto :goto_1
.end method
