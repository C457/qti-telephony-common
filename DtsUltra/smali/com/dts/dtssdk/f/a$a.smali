.class public final enum Lcom/dts/dtssdk/f/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dts/dtssdk/f/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/dts/dtssdk/f/a$a;

.field public static final enum B:Lcom/dts/dtssdk/f/a$a;

.field private static final synthetic C:[Lcom/dts/dtssdk/f/a$a;

.field public static final enum a:Lcom/dts/dtssdk/f/a$a;

.field public static final enum b:Lcom/dts/dtssdk/f/a$a;

.field public static final enum c:Lcom/dts/dtssdk/f/a$a;

.field public static final enum d:Lcom/dts/dtssdk/f/a$a;

.field public static final enum e:Lcom/dts/dtssdk/f/a$a;

.field public static final enum f:Lcom/dts/dtssdk/f/a$a;

.field public static final enum g:Lcom/dts/dtssdk/f/a$a;

.field public static final enum h:Lcom/dts/dtssdk/f/a$a;

.field public static final enum i:Lcom/dts/dtssdk/f/a$a;

.field public static final enum j:Lcom/dts/dtssdk/f/a$a;

.field public static final enum k:Lcom/dts/dtssdk/f/a$a;

.field public static final enum l:Lcom/dts/dtssdk/f/a$a;

.field public static final enum m:Lcom/dts/dtssdk/f/a$a;

.field public static final enum n:Lcom/dts/dtssdk/f/a$a;

.field public static final enum o:Lcom/dts/dtssdk/f/a$a;

.field public static final enum p:Lcom/dts/dtssdk/f/a$a;

.field public static final enum q:Lcom/dts/dtssdk/f/a$a;

.field public static final enum r:Lcom/dts/dtssdk/f/a$a;

.field public static final enum s:Lcom/dts/dtssdk/f/a$a;

.field public static final enum t:Lcom/dts/dtssdk/f/a$a;

.field public static final enum u:Lcom/dts/dtssdk/f/a$a;

.field public static final enum v:Lcom/dts/dtssdk/f/a$a;

.field public static final enum w:Lcom/dts/dtssdk/f/a$a;

.field public static final enum x:Lcom/dts/dtssdk/f/a$a;

.field public static final enum y:Lcom/dts/dtssdk/f/a$a;

.field public static final enum z:Lcom/dts/dtssdk/f/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "UNKNOWN_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->a:Lcom/dts/dtssdk/f/a$a;

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "OK"

    invoke-direct {v0, v1, v4}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "NOT_MODIFIED"

    invoke-direct {v0, v1, v5}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->c:Lcom/dts/dtssdk/f/a$a;

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "API_TIMEOUT"

    invoke-direct {v0, v1, v6}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "INVALID_ARGUMENT"

    invoke-direct {v0, v1, v7}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->e:Lcom/dts/dtssdk/f/a$a;

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "TRANSACTION_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->f:Lcom/dts/dtssdk/f/a$a;

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "FILE_NOT_FOUND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->g:Lcom/dts/dtssdk/f/a$a;

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "DATASTORE_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->h:Lcom/dts/dtssdk/f/a$a;

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "ACCESSORY_NOT_FOUND"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->i:Lcom/dts/dtssdk/f/a$a;

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "SERVICE_NOT_PRESENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->j:Lcom/dts/dtssdk/f/a$a;

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "OUT_OF_MEMORY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->k:Lcom/dts/dtssdk/f/a$a;

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "WRONG_MODE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->l:Lcom/dts/dtssdk/f/a$a;

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "INSUFFICIENT_BUFFER_SIZE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->m:Lcom/dts/dtssdk/f/a$a;

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "NOT_SUPPORTED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->n:Lcom/dts/dtssdk/f/a$a;

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "WRONG_FILE_SIZE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->o:Lcom/dts/dtssdk/f/a$a;

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "DECRYPTION_FAIL"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->p:Lcom/dts/dtssdk/f/a$a;

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "INTERNAL_SDK_ERROR"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->q:Lcom/dts/dtssdk/f/a$a;

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "SERVER_ERROR"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->r:Lcom/dts/dtssdk/f/a$a;

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "INVALID_DTSCS"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->s:Lcom/dts/dtssdk/f/a$a;

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "INVALID_EAGLE_PIPELINE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->t:Lcom/dts/dtssdk/f/a$a;

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "ROUTE_NOT_FOUND"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->u:Lcom/dts/dtssdk/f/a$a;

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "ROOM_NOT_FOUND"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->v:Lcom/dts/dtssdk/f/a$a;

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "DTSCS_TO_EAGLE_CONV_FAILED"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->w:Lcom/dts/dtssdk/f/a$a;

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "UUID_NOT_FOUND"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->x:Lcom/dts/dtssdk/f/a$a;

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "DATASTORE_ERROR_RESET_SUCCESSFUL"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->y:Lcom/dts/dtssdk/f/a$a;

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "FEATURE_NOT_LICENCED"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "ROUTE_NOT_ENABLED"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->A:Lcom/dts/dtssdk/f/a$a;

    new-instance v0, Lcom/dts/dtssdk/f/a$a;

    const-string v1, "INSUFFICIENT_PERMISSION"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->B:Lcom/dts/dtssdk/f/a$a;

    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/dts/dtssdk/f/a$a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->a:Lcom/dts/dtssdk/f/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->c:Lcom/dts/dtssdk/f/a$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->d:Lcom/dts/dtssdk/f/a$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->e:Lcom/dts/dtssdk/f/a$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->f:Lcom/dts/dtssdk/f/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->g:Lcom/dts/dtssdk/f/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->h:Lcom/dts/dtssdk/f/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->i:Lcom/dts/dtssdk/f/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->j:Lcom/dts/dtssdk/f/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->k:Lcom/dts/dtssdk/f/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->l:Lcom/dts/dtssdk/f/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->m:Lcom/dts/dtssdk/f/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->n:Lcom/dts/dtssdk/f/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->o:Lcom/dts/dtssdk/f/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->p:Lcom/dts/dtssdk/f/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->q:Lcom/dts/dtssdk/f/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->r:Lcom/dts/dtssdk/f/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->s:Lcom/dts/dtssdk/f/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->t:Lcom/dts/dtssdk/f/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->u:Lcom/dts/dtssdk/f/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->v:Lcom/dts/dtssdk/f/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->w:Lcom/dts/dtssdk/f/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->x:Lcom/dts/dtssdk/f/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->y:Lcom/dts/dtssdk/f/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->A:Lcom/dts/dtssdk/f/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->B:Lcom/dts/dtssdk/f/a$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dts/dtssdk/f/a$a;->C:[Lcom/dts/dtssdk/f/a$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dts/dtssdk/f/a$a;
    .locals 1

    const-class v0, Lcom/dts/dtssdk/f/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/f/a$a;

    return-object v0
.end method

.method public static values()[Lcom/dts/dtssdk/f/a$a;
    .locals 1

    sget-object v0, Lcom/dts/dtssdk/f/a$a;->C:[Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v0}, [Lcom/dts/dtssdk/f/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dts/dtssdk/f/a$a;

    return-object v0
.end method
