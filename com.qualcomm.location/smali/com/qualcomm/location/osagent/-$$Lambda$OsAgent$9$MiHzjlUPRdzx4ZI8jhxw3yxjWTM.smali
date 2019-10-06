.class public final synthetic Lcom/qualcomm/location/osagent/-$$Lambda$OsAgent$9$MiHzjlUPRdzx4ZI8jhxw3yxjWTM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/qualcomm/location/osagent/OsAgent$9;


# direct methods
.method public synthetic constructor <init>(Lcom/qualcomm/location/osagent/OsAgent$9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qualcomm/location/osagent/-$$Lambda$OsAgent$9$MiHzjlUPRdzx4ZI8jhxw3yxjWTM;->f$0:Lcom/qualcomm/location/osagent/OsAgent$9;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/location/osagent/-$$Lambda$OsAgent$9$MiHzjlUPRdzx4ZI8jhxw3yxjWTM;->f$0:Lcom/qualcomm/location/osagent/OsAgent$9;

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent$9;->lambda$onReceive$0(Lcom/qualcomm/location/osagent/OsAgent$9;)V

    return-void
.end method
