.class public final Lcom/a/b/ct;
.super Lcom/a/b/bp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/b/ct$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/a/b/cs;

.field public d:I

.field public e:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.flurry.android.sdk.FlurrySessionEvent"

    invoke-direct {p0, v0}, Lcom/a/b/bp;-><init>(Ljava/lang/String;)V

    return-void
.end method
