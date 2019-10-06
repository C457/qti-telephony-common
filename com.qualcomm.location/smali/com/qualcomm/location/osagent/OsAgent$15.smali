.class Lcom/qualcomm/location/osagent/OsAgent$15;
.super Ljava/lang/Object;
.source "OsAgent.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/osagent/OsAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/osagent/OsAgent;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/osagent/OsAgent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/location/osagent/OsAgent;

    .line 2297
    iput-object p1, p0, Lcom/qualcomm/location/osagent/OsAgent$15;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 2300
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2301
    .local v0, "msgID":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage what - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->access$2300(Ljava/lang/String;)V

    .line 2303
    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2350
    const-string v2, "Unhandled message"

    invoke-static {v2}, Lcom/qualcomm/location/osagent/OsAgent;->access$1300(Ljava/lang/String;)V

    goto :goto_0

    .line 2323
    :pswitch_0
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent$15;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v2}, Lcom/qualcomm/location/osagent/OsAgent;->access$2500(Lcom/qualcomm/location/osagent/OsAgent;)V

    .line 2324
    goto :goto_0

    .line 2347
    :pswitch_1
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent$15;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-virtual {v2, v1}, Lcom/qualcomm/location/osagent/OsAgent;->handleBleScanStop(Z)V

    .line 2348
    goto :goto_0

    .line 2344
    :pswitch_2
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent$15;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-virtual {v2}, Lcom/qualcomm/location/osagent/OsAgent;->handleBleScanStart()V

    .line 2345
    goto :goto_0

    .line 2341
    :pswitch_3
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent$15;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/qualcomm/location/osagent/OsAgent;->handleModuleTurnOff(I)V

    .line 2342
    goto :goto_0

    .line 2338
    :pswitch_4
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent$15;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4}, Lcom/qualcomm/location/osagent/OsAgent;->handleModuleTurnOn(II)V

    .line 2339
    goto :goto_0

    .line 2335
    :pswitch_5
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent$15;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v2}, Lcom/qualcomm/location/osagent/OsAgent;->access$2900(Lcom/qualcomm/location/osagent/OsAgent;)V

    .line 2336
    goto :goto_0

    .line 2329
    :pswitch_6
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent$15;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/qualcomm/location/osagent/OsAgent;->access$2700(Lcom/qualcomm/location/osagent/OsAgent;I)V

    .line 2330
    goto :goto_0

    .line 2332
    :pswitch_7
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent$15;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v2}, Lcom/qualcomm/location/osagent/OsAgent;->access$2800(Lcom/qualcomm/location/osagent/OsAgent;)V

    .line 2333
    goto :goto_0

    .line 2326
    :pswitch_8
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent$15;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v2}, Lcom/qualcomm/location/osagent/OsAgent;->access$2600(Lcom/qualcomm/location/osagent/OsAgent;)V

    .line 2327
    goto :goto_0

    .line 2319
    :pswitch_9
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent$15;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v2}, Lcom/qualcomm/location/osagent/OsAgent;->access$2400(Lcom/qualcomm/location/osagent/OsAgent;)V

    .line 2320
    goto :goto_0

    .line 2315
    :pswitch_a
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent$15;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-virtual {v2}, Lcom/qualcomm/location/osagent/OsAgent;->handleUnsubscribeAll()V

    .line 2316
    goto :goto_0

    .line 2312
    :pswitch_b
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent$15;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/qualcomm/location/osagent/OsAgent;->handleUnsubscribe(Ljava/lang/Object;)V

    .line 2313
    goto :goto_0

    .line 2309
    :pswitch_c
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent$15;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/qualcomm/location/osagent/OsAgent;->handleRequestData(Ljava/lang/Object;)V

    .line 2310
    goto :goto_0

    .line 2306
    :pswitch_d
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent$15;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/qualcomm/location/osagent/OsAgent;->handleSubscribe(Ljava/lang/Object;)V

    .line 2307
    nop

    .line 2353
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
