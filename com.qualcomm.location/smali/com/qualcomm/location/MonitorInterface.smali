.class public interface abstract Lcom/qualcomm/location/MonitorInterface;
.super Ljava/lang/Object;
.source "MonitorInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/location/MonitorInterface$Monitor;
    }
.end annotation


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract subscribe(Lcom/qualcomm/location/MonitorInterface$Monitor;)V
.end method

.method public abstract unsubscribe(Lcom/qualcomm/location/MonitorInterface$Monitor;)V
.end method
