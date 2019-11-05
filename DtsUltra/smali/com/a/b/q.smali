.class public final enum Lcom/a/b/q;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/b/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/b/q;

.field public static final enum b:Lcom/a/b/q;

.field public static final enum c:Lcom/a/b/q;

.field public static final enum d:Lcom/a/b/q;

.field public static final enum e:Lcom/a/b/q;

.field public static final enum f:Lcom/a/b/q;

.field public static final enum g:Lcom/a/b/q;

.field public static final enum h:Lcom/a/b/q;

.field private static final synthetic i:[Lcom/a/b/q;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/a/b/q;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v3}, Lcom/a/b/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/q;->a:Lcom/a/b/q;

    new-instance v0, Lcom/a/b/q;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v4}, Lcom/a/b/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/q;->b:Lcom/a/b/q;

    new-instance v0, Lcom/a/b/q;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/a/b/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/q;->c:Lcom/a/b/q;

    new-instance v0, Lcom/a/b/q;

    const-string v1, "FATAL"

    invoke-direct {v0, v1, v6}, Lcom/a/b/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/q;->d:Lcom/a/b/q;

    new-instance v0, Lcom/a/b/q;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v7}, Lcom/a/b/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/q;->e:Lcom/a/b/q;

    new-instance v0, Lcom/a/b/q;

    const-string v1, "OFF"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/a/b/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/q;->f:Lcom/a/b/q;

    new-instance v0, Lcom/a/b/q;

    const-string v1, "TRACE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/a/b/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/q;->g:Lcom/a/b/q;

    new-instance v0, Lcom/a/b/q;

    const-string v1, "WARN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/a/b/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/b/q;->h:Lcom/a/b/q;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/a/b/q;

    sget-object v1, Lcom/a/b/q;->a:Lcom/a/b/q;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/b/q;->b:Lcom/a/b/q;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/b/q;->c:Lcom/a/b/q;

    aput-object v1, v0, v5

    sget-object v1, Lcom/a/b/q;->d:Lcom/a/b/q;

    aput-object v1, v0, v6

    sget-object v1, Lcom/a/b/q;->e:Lcom/a/b/q;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/a/b/q;->f:Lcom/a/b/q;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/a/b/q;->g:Lcom/a/b/q;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/a/b/q;->h:Lcom/a/b/q;

    aput-object v2, v0, v1

    sput-object v0, Lcom/a/b/q;->i:[Lcom/a/b/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/b/q;
    .locals 1

    const-class v0, Lcom/a/b/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/b/q;

    return-object v0
.end method

.method public static values()[Lcom/a/b/q;
    .locals 1

    sget-object v0, Lcom/a/b/q;->i:[Lcom/a/b/q;

    invoke-virtual {v0}, [Lcom/a/b/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/b/q;

    return-object v0
.end method
