.class public Lcom/a/b/ar;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/b/ar$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/b/ao;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/a/b/ar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/b/ar;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/ar;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/a/b/ar;J)J
    .locals 1

    iput-wide p1, p0, Lcom/a/b/ar;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/a/b/ar;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/a/b/ar;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/a/b/ar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/a/b/ar;->b:Z

    return p1
.end method
