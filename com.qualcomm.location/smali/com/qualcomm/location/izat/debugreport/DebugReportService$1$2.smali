.class Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;
.super Ljava/util/TimerTask;
.source "DebugReportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->startReporting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    .line 253
    iput-object p1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 256
    invoke-static {}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfEphmerisReports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 258
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfFixStatusReports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 259
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfEPIReports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 260
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfBestLocationReports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 261
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListGpsTimeOfReports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 262
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListXoStateOfReports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 263
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListRfStateOfReports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 264
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfErrorRecoveries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 265
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfPDRReports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 266
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfSVHealthReports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 267
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfXTRAReports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 269
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v2, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v4, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfEphmerisReports:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v5, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfFixStatusReports:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v6, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfEPIReports:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v7, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfBestLocationReports:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v8, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListGpsTimeOfReports:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v9, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListXoStateOfReports:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v10, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListRfStateOfReports:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v11, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfErrorRecoveries:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v12, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfPDRReports:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v13, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfSVHealthReports:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v14, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfXTRAReports:Ljava/util/ArrayList;

    invoke-static/range {v2 .. v14}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$600(Lcom/qualcomm/location/izat/debugreport/DebugReportService;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 281
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfEphmerisReports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfFixStatusReports:Ljava/util/ArrayList;

    .line 282
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfEPIReports:Ljava/util/ArrayList;

    .line 283
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfBestLocationReports:Ljava/util/ArrayList;

    .line 284
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListGpsTimeOfReports:Ljava/util/ArrayList;

    .line 285
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListXoStateOfReports:Ljava/util/ArrayList;

    .line 286
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListRfStateOfReports:Ljava/util/ArrayList;

    .line 287
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfErrorRecoveries:Ljava/util/ArrayList;

    .line 288
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfPDRReports:Ljava/util/ArrayList;

    .line 289
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfSVHealthReports:Ljava/util/ArrayList;

    .line 290
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v1, v1, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfXTRAReports:Ljava/util/ArrayList;

    .line 291
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    invoke-static {}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    const-string v1, "DebugReportService"

    const-string v2, "Empty debug report"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    monitor-exit v0

    return-void

    .line 298
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    .local v1, "bundleDebugReportObj":Landroid/os/Bundle;
    const/4 v2, 0x0

    :try_start_1
    const-string v3, "ephmeris-status-report"

    iget-object v4, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v4, v4, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v4, v4, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfEphmerisReports:Ljava/util/ArrayList;

    .line 303
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .line 301
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    goto :goto_0

    :catch_0
    move-exception v3

    .line 307
    :goto_0
    :try_start_2
    const-string v3, "fix-status-report"

    iget-object v4, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v4, v4, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v4, v4, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfFixStatusReports:Ljava/util/ArrayList;

    .line 309
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .line 307
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    goto :goto_1

    :catch_1
    move-exception v3

    .line 313
    :goto_1
    :try_start_3
    const-string v3, "external-position-injected"

    iget-object v4, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v4, v4, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v4, v4, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfEPIReports:Ljava/util/ArrayList;

    .line 315
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .line 313
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 316
    goto :goto_2

    :catch_2
    move-exception v3

    .line 319
    :goto_2
    :try_start_4
    const-string v3, "best-position-available"

    iget-object v4, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v4, v4, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v4, v4, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfBestLocationReports:Ljava/util/ArrayList;

    .line 321
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .line 319
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 322
    goto :goto_3

    :catch_3
    move-exception v3

    .line 325
    :goto_3
    :try_start_5
    const-string v3, "gps-time-report"

    iget-object v4, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v4, v4, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v4, v4, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListGpsTimeOfReports:Ljava/util/ArrayList;

    .line 327
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .line 325
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 328
    goto :goto_4

    :catch_4
    move-exception v3

    .line 331
    :goto_4
    :try_start_6
    const-string v3, "rf-state-report"

    iget-object v4, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v4, v4, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v4, v4, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListRfStateOfReports:Ljava/util/ArrayList;

    .line 333
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .line 331
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 334
    goto :goto_5

    :catch_5
    move-exception v3

    .line 337
    :goto_5
    :try_start_7
    const-string v3, "xo-state-report"

    iget-object v4, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v4, v4, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v4, v4, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListXoStateOfReports:Ljava/util/ArrayList;

    .line 339
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .line 337
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 340
    goto :goto_6

    :catch_6
    move-exception v3

    .line 343
    :goto_6
    :try_start_8
    const-string v3, "last-error-recoveries"

    iget-object v4, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v4, v4, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v4, v4, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfErrorRecoveries:Ljava/util/ArrayList;

    .line 345
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .line 343
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 346
    goto :goto_7

    :catch_7
    move-exception v3

    .line 349
    :goto_7
    :try_start_9
    const-string v3, "pdr-info"

    iget-object v4, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v4, v4, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v4, v4, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfPDRReports:Ljava/util/ArrayList;

    .line 351
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .line 349
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 352
    goto :goto_8

    :catch_8
    move-exception v3

    .line 355
    :goto_8
    :try_start_a
    const-string v3, "sv-health-report"

    iget-object v4, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v4, v4, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v4, v4, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfSVHealthReports:Ljava/util/ArrayList;

    .line 357
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .line 355
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 358
    goto :goto_9

    :catch_9
    move-exception v3

    .line 361
    :goto_9
    :try_start_b
    const-string v3, "xtra-status-report"

    iget-object v4, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v4, v4, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    iget-object v4, v4, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->mListOfXTRAReports:Ljava/util/ArrayList;

    .line 363
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 361
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 364
    goto :goto_a

    :catch_a
    move-exception v2

    .line 366
    :goto_a
    const/4 v2, 0x0

    .line 367
    .local v2, "ownerPackage":Ljava/lang/String;
    :try_start_c
    iget-object v3, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1$2;->this$1:Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;

    iget-object v3, v3, Lcom/qualcomm/location/izat/debugreport/DebugReportService$1;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    invoke-static {v3}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$200(Lcom/qualcomm/location/izat/debugreport/DebugReportService;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getAllData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;

    .line 368
    .local v4, "clData":Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;
    const/4 v5, 0x1

    invoke-static {v4}, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;->access$700(Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;)Z

    move-result v6

    if-ne v5, v6, :cond_3

    .line 369
    invoke-static {}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$100()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 370
    const-string v5, "DebugReportService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending report to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 374
    :cond_2
    :try_start_d
    invoke-static {v4}, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;->access$300(Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;)Lcom/qti/debugreport/IDebugReportCallback;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/qti/debugreport/IDebugReportCallback;->onDebugDataAvailable(Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 378
    goto :goto_c

    .line 376
    :catch_b
    move-exception v5

    .line 380
    .end local v4    # "clData":Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;
    :cond_3
    :goto_c
    goto :goto_b

    .line 381
    .end local v1    # "bundleDebugReportObj":Landroid/os/Bundle;
    .end local v2    # "ownerPackage":Ljava/lang/String;
    :cond_4
    :try_start_e
    monitor-exit v0

    .line 382
    return-void

    .line 381
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw v1
.end method
