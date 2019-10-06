.class public abstract Lcom/qualcomm/location/MonitorInterface$Monitor;
.super Ljava/lang/Object;
.source "MonitorInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/MonitorInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Monitor"
.end annotation


# instance fields
.field protected final mMoniterService:Lcom/qualcomm/location/MonitorInterface;

.field private final mMsgIdBase:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/location/MonitorInterface;I)V
    .locals 0
    .param p1, "service"    # Lcom/qualcomm/location/MonitorInterface;
    .param p2, "msgIdBase"    # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/qualcomm/location/MonitorInterface$Monitor;->mMoniterService:Lcom/qualcomm/location/MonitorInterface;

    .line 25
    iput p2, p0, Lcom/qualcomm/location/MonitorInterface$Monitor;->mMsgIdBase:I

    .line 26
    return-void
.end method


# virtual methods
.method public final composeMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/qualcomm/location/MonitorInterface$Monitor;->mMoniterService:Lcom/qualcomm/location/MonitorInterface;

    invoke-interface {v0}, Lcom/qualcomm/location/MonitorInterface;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 34
    .local v0, "handler":Landroid/os/Handler;
    iget v1, p0, Lcom/qualcomm/location/MonitorInterface$Monitor;->mMsgIdBase:I

    add-int/2addr v1, p1

    invoke-static {v0, v1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 35
    .local v1, "msg":Landroid/os/Message;
    return-object v1
.end method

.method public final getMsgIdBase()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/qualcomm/location/MonitorInterface$Monitor;->mMsgIdBase:I

    return v0
.end method

.method public abstract getNumOfMessages()I
.end method

.method public abstract handleMessage(Landroid/os/Message;)V
.end method

.method public final sendMessage(IIILjava/lang/Object;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/qualcomm/location/MonitorInterface$Monitor;->mMoniterService:Lcom/qualcomm/location/MonitorInterface;

    invoke-interface {v0}, Lcom/qualcomm/location/MonitorInterface;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 40
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qualcomm/location/MonitorInterface$Monitor;->composeMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 41
    .local v1, "msg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 43
    return-void
.end method
