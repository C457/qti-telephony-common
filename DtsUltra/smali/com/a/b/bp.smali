.class public abstract Lcom/a/b/bp;
.super Ljava/lang/Object;


# instance fields
.field protected c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.flurry.android.sdk.ReplaceMeWithAProperEventName"

    iput-object v0, p0, Lcom/a/b/bp;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event must have a name!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/a/b/bp;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/b/bp;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()V
    .locals 1

    invoke-static {}, Lcom/a/b/br;->a()Lcom/a/b/br;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/a/b/br;->a(Lcom/a/b/bp;)V

    return-void
.end method
