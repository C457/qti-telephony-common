.class public final enum Lcom/dts/dtssdk/f/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dts/dtssdk/f/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dts/dtssdk/f/b;

.field public static final enum b:Lcom/dts/dtssdk/f/b;

.field public static final enum c:Lcom/dts/dtssdk/f/b;

.field public static final enum d:Lcom/dts/dtssdk/f/b;

.field public static final enum e:Lcom/dts/dtssdk/f/b;

.field public static final enum f:Lcom/dts/dtssdk/f/b;

.field public static final enum g:Lcom/dts/dtssdk/f/b;

.field public static final enum h:Lcom/dts/dtssdk/f/b;

.field public static final enum i:Lcom/dts/dtssdk/f/b;

.field public static final enum j:Lcom/dts/dtssdk/f/b;

.field public static final enum k:Lcom/dts/dtssdk/f/b;

.field public static final enum l:Lcom/dts/dtssdk/f/b;

.field public static final enum m:Lcom/dts/dtssdk/f/b;

.field public static final enum n:Lcom/dts/dtssdk/f/b;

.field private static final synthetic o:[Lcom/dts/dtssdk/f/b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/dts/dtssdk/f/b;

    const-string v1, "OK"

    invoke-direct {v0, v1, v3}, Lcom/dts/dtssdk/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/b;->a:Lcom/dts/dtssdk/f/b;

    new-instance v0, Lcom/dts/dtssdk/f/b;

    const-string v1, "CANNOT_OPEN"

    invoke-direct {v0, v1, v4}, Lcom/dts/dtssdk/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/b;->b:Lcom/dts/dtssdk/f/b;

    new-instance v0, Lcom/dts/dtssdk/f/b;

    const-string v1, "CANNOT_READ"

    invoke-direct {v0, v1, v5}, Lcom/dts/dtssdk/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/b;->c:Lcom/dts/dtssdk/f/b;

    new-instance v0, Lcom/dts/dtssdk/f/b;

    const-string v1, "NOT_A_KEYFILE"

    invoke-direct {v0, v1, v6}, Lcom/dts/dtssdk/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/b;->d:Lcom/dts/dtssdk/f/b;

    new-instance v0, Lcom/dts/dtssdk/f/b;

    const-string v1, "TRUNC_KEYFILE"

    invoke-direct {v0, v1, v7}, Lcom/dts/dtssdk/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/b;->e:Lcom/dts/dtssdk/f/b;

    new-instance v0, Lcom/dts/dtssdk/f/b;

    const-string v1, "BAD_VERSION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/b;->f:Lcom/dts/dtssdk/f/b;

    new-instance v0, Lcom/dts/dtssdk/f/b;

    const-string v1, "BAD_SIG"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/b;->g:Lcom/dts/dtssdk/f/b;

    new-instance v0, Lcom/dts/dtssdk/f/b;

    const-string v1, "BAD_ID"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/b;->h:Lcom/dts/dtssdk/f/b;

    new-instance v0, Lcom/dts/dtssdk/f/b;

    const-string v1, "BAD_TOKEN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/b;->i:Lcom/dts/dtssdk/f/b;

    new-instance v0, Lcom/dts/dtssdk/f/b;

    const-string v1, "EXPIRED_TOKEN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/b;->j:Lcom/dts/dtssdk/f/b;

    new-instance v0, Lcom/dts/dtssdk/f/b;

    const-string v1, "INTERNAL_ERROR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/b;->k:Lcom/dts/dtssdk/f/b;

    new-instance v0, Lcom/dts/dtssdk/f/b;

    const-string v1, "READ_HOST"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/b;->l:Lcom/dts/dtssdk/f/b;

    new-instance v0, Lcom/dts/dtssdk/f/b;

    const-string v1, "BAD_KEY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/b;->m:Lcom/dts/dtssdk/f/b;

    new-instance v0, Lcom/dts/dtssdk/f/b;

    const-string v1, "UNKNOWN_ERROR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/b;->n:Lcom/dts/dtssdk/f/b;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/dts/dtssdk/f/b;

    sget-object v1, Lcom/dts/dtssdk/f/b;->a:Lcom/dts/dtssdk/f/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dts/dtssdk/f/b;->b:Lcom/dts/dtssdk/f/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dts/dtssdk/f/b;->c:Lcom/dts/dtssdk/f/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dts/dtssdk/f/b;->d:Lcom/dts/dtssdk/f/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dts/dtssdk/f/b;->e:Lcom/dts/dtssdk/f/b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dts/dtssdk/f/b;->f:Lcom/dts/dtssdk/f/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dts/dtssdk/f/b;->g:Lcom/dts/dtssdk/f/b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dts/dtssdk/f/b;->h:Lcom/dts/dtssdk/f/b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dts/dtssdk/f/b;->i:Lcom/dts/dtssdk/f/b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dts/dtssdk/f/b;->j:Lcom/dts/dtssdk/f/b;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dts/dtssdk/f/b;->k:Lcom/dts/dtssdk/f/b;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dts/dtssdk/f/b;->l:Lcom/dts/dtssdk/f/b;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dts/dtssdk/f/b;->m:Lcom/dts/dtssdk/f/b;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dts/dtssdk/f/b;->n:Lcom/dts/dtssdk/f/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dts/dtssdk/f/b;->o:[Lcom/dts/dtssdk/f/b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dts/dtssdk/f/b;
    .locals 1

    const-class v0, Lcom/dts/dtssdk/f/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/f/b;

    return-object v0
.end method

.method public static values()[Lcom/dts/dtssdk/f/b;
    .locals 1

    sget-object v0, Lcom/dts/dtssdk/f/b;->o:[Lcom/dts/dtssdk/f/b;

    invoke-virtual {v0}, [Lcom/dts/dtssdk/f/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dts/dtssdk/f/b;

    return-object v0
.end method
